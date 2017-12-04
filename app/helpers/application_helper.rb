module ApplicationHelper
	def title(*args)
		content_for :title do
			if t('.title', default: '').empty?
				t 'defaults.app_name_plain'
			else
				"#{ t '.title', *args } | #{ t 'defaults.app_name_plain' }"
			end
		end
	end

	def display_alert(content_or_options_with_block={}, options={}, &block)
		if block_given?
			options = content_or_options_with_block if content_or_options_with_block.is_a?(Hash)
			message = capture(&block)
		else
			message = content_tag :p, sanitize(content_or_options_with_block, tags: %w())
		end

		html_class = options.has_key?(:class) ? options.fetch(:class) : 'alert-success'
		html_class += ' alert alert-dismissible fade show'
		html_class = html_class.split.sort.join(' ')

		if message.present?
			content_tag :div, class: html_class do
				content = content_tag :button, class: 'close', data: { dismiss: 'alert' } do
					icon 'close'
				end
				content += message
			end
		end
	end

	def paginate_with_info(resources)
		content = paginate resources
		content += content_tag :h6, class: 'small text-muted text-center' do
			page_entries_info resources
		end
	end

	def navbar_link_to(path, options={}, &block)
		if current_page?(path)
			content_tag :span, options.merge({class: options[:class] += ' active'}) do
				capture(&block)
			end
		else
			link_to path, options do
				capture(&block)
			end
		end
	end

	def header_link_to(path, options={}, &block)
		if options[:tooltip].present?
			data = { toggle: 'tooltip', title: options[:tooltip], placement: 'bottom' }
			options[:data].present? ? options[:data].merge!(data) : options.merge!({data: data})
			options.delete(:tooltip)
		end

		link_to path, options do
			capture(&block)
		end
	end

	def avatar_tag(source, options = {})
		options.merge!({onerror: "this.onerror=null;this.src='#{asset_path('avatar-unknown.jpg')}';"})
		image_tag source, options
	end
end
