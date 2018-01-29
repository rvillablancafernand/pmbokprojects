class AssignmentStudent < ApplicationRecord
	# Relations
	belongs_to :assignment
	belongs_to :student
	has_many :assignments_students_process_objects, inverse_of: :assignment_student
	accepts_nested_attributes_for :assignments_students_process_objects, allow_destroy: true
	has_many :process_objects, through: :assignments_students_process_objects

	# States
	state_machine :state, initial: :created do
		event :success do
			transition :created => :in_progress,
				:in_progress => :done,
				:done => :revised
		end
	end

	def state_to_s
		case state_name
		when :created
			'Tarea Creada'
		when :in_progress
			'Tarea en Progreso'
		when :done
			'Tarea Entregada'
		when :revised
			'Tarea Revisada'
		end
	end

	def disabled?
		state_name != :done
	end

	def calc_grade
		count = 0
		total = 0.0
		process_objects.each do |process_object|
			process_object.inputs.each do |input|
				input.attachments.each do |attachment|
					total += attachment.grade_professor.to_f
					count += 1
				end
				count +=1 if input.attachments.count.zero?
			end
			process_object.tools_and_techniques.each do |tool_and_technique|
				tool_and_technique.attachments.each do |attachment|
					total += attachment.grade_professor.to_f
					count += 1
				end
				count +=1 if tool_and_technique.attachments.count.zero?
			end
			process_object.outputs.each do |output|
				output.attachments.each do |attachment|
					total += attachment.grade_professor.to_f
					count += 1
				end
				count +=1 if output.attachments.count.zero?
			end
		end
		(total/count).to_s
	end
end
