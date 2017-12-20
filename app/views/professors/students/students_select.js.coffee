$('#assignment_student_ids').html('<%= j options_from_collection_for_select(@students, :id, :to_s) %>')
