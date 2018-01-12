$(document).on 'turbolinks:load', ->
	$ ->
		$('#assignment_course_id').on 'change', ->
			$.get('/courses/' + $(this).val() + '/students').done
