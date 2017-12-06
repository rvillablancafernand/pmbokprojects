class ProcessObject < ApplicationRecord
	belongs_to :process_group, counter_cache: true
	belongs_to :knowledge_area_type
	has_many :inputs, inverse_of: :process_object
	accepts_nested_attributes_for :inputs, allow_destroy: true
	has_many :tools_and_techniques, inverse_of: :process_object
	accepts_nested_attributes_for :tools_and_techniques, allow_destroy: true
	has_many :outputs, inverse_of: :process_object
	accepts_nested_attributes_for :outputs, allow_destroy: true
	has_and_belongs_to_many :assignments

	validates_presence_of :version, :name

	def color
		knowledge_area_type.color
	end

	def bd_style
		"border-color:#{color};"
	end

	def bg_style
		"background-color:#{color};"
	end

	def to_s
		name
	end
end
