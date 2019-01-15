class Turn
	def new_question
		(1..20).to_a.sample(2)
	end

	def set_answer(question_array)
		question_array[0] + question_array[1]
	end
end