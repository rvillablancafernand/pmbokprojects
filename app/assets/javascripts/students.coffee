$(document).on 'turbolinks:load', ->
	$ ->
		$('#assignment_course_id').on 'change', ->
			$.get('/students', 'course_id': $(this).val()).done
