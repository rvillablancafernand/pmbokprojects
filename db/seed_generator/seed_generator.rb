input_file_name        = 'pmbok_input.txt'
output_file_name       = '../seeds/02_pmbok.rb'
log_file_name          = 'report.log'

@input  = File.open(input_file_name, 'r')
@output = File.open(output_file_name, 'w')
@log    = File.open(log_file_name, 'w')

# ---------------------

def gets
	if @input.closed?
		super
	else
		result = @input.gets
		result = @input.gets if not result.nil? and result.start_with? '#'
		return result.strip unless result.nil?
		result
	end
end

def puts(*args)
	@output.closed? ? super : @output.puts(args)
end

def puts_log(*args); @log.closed? ? puts(args) : ( @log.puts(args); puts(args) );                   end

startTime = Time.now

### Parser

@counter = 0
@line = String.new
@max_lengths = Hash.new

# ---------------------

@process_group_types = Array.new
@knowledge_area_types = Array.new

@input_and_output_types = Array.new
@tool_and_technique_types = Array.new

@process_groups = Array.new
@process_objects = Array.new

@inputs = Array.new
@tools_and_techniques = Array.new
@outputs = Array.new

# ---------------------

Pmbok                = Struct.new :id, :name
ProcessGroupType     = Struct.new :id, :name
KnowledgeAreaType    = Struct.new :id, :name, :color

InputAndOutputType   = Struct.new :id, :name
ToolAndTechniqueType = Struct.new :id, :name

ProcessGroup         = Struct.new :id, :pmbok, :process_group_type
ProcessObject        = Struct.new :id, :version, :name, :process_group, :knowledge_area_type

Input                = Struct.new :id, :process_object, :input_and_output_type
ToolAndTechnique     = Struct.new :id, :process_object, :tool_and_technique_type
Output               = Struct.new :id, :process_object, :input_and_output_type

# ---------------------

class String
	def underscore
		self.gsub(/::/, '/').gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').gsub(/([a-z\d])([A-Z])/,'\1_\2').tr("-", "_").downcase
	end
end

# ---------------------

def stop?(str = '<->')
	if @line == str
		return true
	end
	false
end

def continue?(str = '<->')
	if @line != str
		return true
	end
	false
end

def reset_helpers!
	@counter = 0
	# @max_lengths = Hash.new
end

def newline
	puts "\n"
end

def title(string, indent)
	puts "#{"#"*indent} #{string}"
end

def max_lengths(object)
	if object.is_a? Array
		object.each do |obj|
			max_lengths obj
		end
	else
		object.each_pair do |key, val|

			case val
			when String, Integer
				val = val.to_s.length
				@max_lengths["#{object.class.name.underscore}_#{key.to_s}".to_sym] = val if @max_lengths["#{object.class.name.underscore}_#{key.to_s}".to_sym].to_i <= val
			when Struct
				val = val.class.name.underscore.to_s.length
				@max_lengths["#{object.class.name.underscore}_#{key.to_s}".to_sym] = val if @max_lengths["#{object.class.name.underscore}_#{key.to_s}".to_sym].to_i <= val
			end
		end
	end
end

def format_assigment(object)

	if object.is_a? Array
		object.each do |obj|
			format_assigment obj
		end
	else
		attributes = object.to_h
		id = attributes.delete :id
		@keys = nil
		@vars = nil

		attributes.each_with_index do |(key, val), i|
			not_last_item = attributes.count != i + 1

			case val
			when String
				if not_last_item
					max_length = @max_lengths["#{object.class.name.underscore}_#{key}".to_sym] + 3
					@keys = @keys.to_s + "#{ key }: %-#{ max_length }s "
					@vars = @vars.to_a << "'#{ val }',"
				else
					@keys = @keys.to_s + "#{ key }: '#{ val }'"
				end
			when Integer
				if not_last_item
					max_length = @max_lengths["#{object.class.name.underscore}_#{key}".to_sym] + 1
					@keys = @keys.to_s + "#{ key }: %-#{ max_length }s "
					@vars = @vars.to_a << "#{ val },"
				else
					@keys = @keys.to_s + "#{ key }: #{ val }"
				end
			when Struct
				if not_last_item
					max_length = @max_lengths["#{object.class.name.underscore}_#{key}".to_sym] + 1
					@keys = @keys.to_s + "#{ key }: %-#{ max_length }s "
					val = val.id.nil? ? "#{val.class.name.underscore}," : "#{val.class.name.underscore}_#{val.id},"
					@vars = @vars.to_a << val
				else
					val = val.id.nil? ? "#{val.class.name.underscore}" : "#{val.class.name.underscore}_#{val.id}"
					@keys = @keys.to_s + "#{ key }: #{ val }"
				end
			end

		end

		cname = object.class.name
		cname_und = id.nil? ? cname.underscore : "#{ cname.underscore }_#{ id }"
		cname_und_length = cname.underscore.length + (@max_lengths["#{object.class.name.underscore}_id".to_sym] + 1) unless @max_lengths["#{object.class.name.underscore}_id".to_sym].to_i.zero?
		puts sprintf "%-#{ cname_und_length }s = #{ cname }.create #{ @keys }", cname_und, *@vars
	end
end

# ---------------------

pmbok = Pmbok.new nil, gets

title "PMBOK #{pmbok.name}", 1

max_lengths pmbok
format_assigment pmbok

reset_helpers!
newline

# ---------------------

loop do
	@line = gets
	@counter += 1

	break if stop?

	process_group_type = ProcessGroupType.new @counter, @line

	max_lengths process_group_type

	@process_group_types << process_group_type
end

title "Process Group Types", 2

format_assigment @process_group_types

reset_helpers!
newline

# ---------------------

loop do
	@line, color = gets.split '|'
	@counter += 1

	break if stop?

	knowledge_area_type = KnowledgeAreaType.new @counter, @line, color

	max_lengths knowledge_area_type

	@knowledge_area_types << knowledge_area_type
end

title "Knowledge Areas Types", 2

format_assigment @knowledge_area_types

reset_helpers!
newline

# ---------------------

last_line_type = :nil

process_object_counter = 1

input_and_output_type_counter = 1
tool_and_technique_type_counter = 1

input_counter = 1
output_counter = 1
tool_and_technique_counter = 1

process_group = nil
process_object = nil

words_regex = "[a-zA-Z áéíóúñÁÉÍÓÚ]+"

loop do
	break if not @line = gets

	case
	when @line =~ /^<(#{words_regex})>$/
		process_group_type = @process_group_types.select{ |i| i.name == $1 }.first

		process_group = ProcessGroup.new process_group_type.id, pmbok, process_group_type

		@process_groups << process_group

		last_line_type = :process_group_begin

	when ( @line =~ /^(#{words_regex})$/ and ( last_line_type == :process_group_begin or last_line_type == :end_process_object ) )
		knowledge_area_type = @knowledge_area_types.select{ |i| i.name == $1 }.first

		process_object = ProcessObject.new process_object_counter, gets, gets, process_group, knowledge_area_type
		@process_objects << process_object

		process_object_counter += 1
		last_line_type = :process_object_begin

	when @line == 'Inputs'
		last_line_type = :input

	when ( last_line_type == :input and @line != 'ToolsAndTechniques' )

		@line.sub! /\d{1,2}\. /, ''

		input_and_output_type = @input_and_output_types.select{ |i| i.name == @line }.first

		if input_and_output_type.nil?
			input_and_output_type = InputAndOutputType.new input_and_output_type_counter, @line
			@input_and_output_types << input_and_output_type

			input_and_output_type_counter += 1
		end

		input = Input.new input_counter, process_object, input_and_output_type
		@inputs << input

		input_counter += 1
		last_line_type = :input

	when @line == 'ToolsAndTechniques'
		last_line_type = :tool_and_technique

	when ( last_line_type == :tool_and_technique and @line != 'Outputs' )

		@line.sub! /\d{1,2}\. /, ''

		tool_and_technique_type = @tool_and_technique_types.select{ |i| i.name == @line }.first

		if tool_and_technique_type.nil?
			tool_and_technique_type = ToolAndTechniqueType.new tool_and_technique_type_counter, @line
			@tool_and_technique_types << tool_and_technique_type

			tool_and_technique_type_counter += 1
		end

		tool_and_technique = ToolAndTechnique.new tool_and_technique_counter, process_object, tool_and_technique_type
		@tools_and_techniques << tool_and_technique

		tool_and_technique_counter += 1
		last_line_type = :tool_and_technique

	when @line == 'Outputs'
		last_line_type = :output

	when ( last_line_type == :output and @line != '<->' )

		@line.sub! /\d{1,2}\. /, ''

		input_and_output_type = @input_and_output_types.select{ |i| i.name == @line }.first

		if input_and_output_type.nil?
			input_and_output_type = InputAndOutputType.new input_and_output_type_counter, @line
			@input_and_output_types << input_and_output_type

			input_and_output_type_counter += 1
		end

		output = Output.new output_counter, process_object, input_and_output_type
		@outputs << output

		output_counter += 1
		last_line_type = :output

	when @line == '<->'
		last_line_type = :end_process_object

	end
end

# ---------------------

title "Input And Output Types", 2

max_lengths @input_and_output_types
format_assigment @input_and_output_types

reset_helpers!
newline

# ---------------------

title "Tool And Technique Types", 2

max_lengths @tool_and_technique_types
format_assigment @tool_and_technique_types

reset_helpers!
newline

# ---------------------

title "Process Groups", 2

max_lengths @process_groups
max_lengths @process_objects
max_lengths @inputs
max_lengths @tools_and_techniques
max_lengths @outputs

@process_groups.each do |process_group|
	title "#{process_group.process_group_type.name}", 2
	format_assigment process_group

	title "Process Objects", 3
	@process_objects.select{|i| i.process_group == process_group}.each do |process_object|
		format_assigment process_object
		title "Inputs", 4
		@inputs.select {|i| i.process_object == process_object}.each do |i|
			format_assigment i
		end
		title "Tools And Techiniques", 4
		@tools_and_techniques.select {|i| i.process_object == process_object}.each do |i|
			format_assigment i
		end
		title "Outputs", 4
		@outputs.select {|i| i.process_object == process_object}.each do |i|
			format_assigment i
		end
	newline
	end
end

reset_helpers!
newline

###

endTime = Time.now

@input.close
@output.close

puts_log " ---------------------------------------------------------------------"
puts_log "| #{ sprintf "%-30s: %-30d", "PMBOKS", 1 }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Process Group Types", @process_group_types.count }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Knowledge Area Types", @knowledge_area_types.count }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Input And Output Types", @input_and_output_types.count }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Tool And Technique Types", @tool_and_technique_types.count }\u2714 Ok! |"
puts_log "|---------------------------------------------------------------------|"
puts_log "| #{ sprintf "%-30s: %-30d", "Process Groups", @process_group_types.count }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Process Objects", (process_object_counter - 1) }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Inputs", (input_counter - 1) }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Tools And Techiniques", (tool_and_technique_counter - 1) }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30d", "Outputs", (output_counter - 1) }\u2714 Ok! |"
puts_log "| #{ sprintf "%-30s: %-30.6f", "Runtime (secs)", (endTime - startTime) }\u2714 Ok! |"
puts_log " ---------------------------------------------------------------------"

@log.close
