class Api::EducationsController < ApplicationController

	def create 

		@education = Education.new(
			student_id: params [:student_id]
			start_date: params [:start_name], 
			end_date: params [:end_date],
			degree: params [:degree],
			university_name: params [:university_name], 
			details: params [:details] 
		)
	end 

	if @education.save 
		if_saved = true 
		else 

		if_saved = false 
	end 

	def update 

		@education = Education.find_by(id: params[:id])
		@education = Education.update(
			student_id: params [:student_id]
			start_name: params [:start_name], 
			end_date: params [:end_date],
			degree: params [:degree],
			university_name: params [:university_name], 
			details: params [:details] 
		)
	end 

	def destroy 
		@education = Education.find_by(id: params[:id])
		@education.destroy 
	end 
end
