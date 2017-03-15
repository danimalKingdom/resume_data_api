class Api::StudentsController < ApplicationController
	def index
		@students = Student.all
		render "index.json.jbuilder"
	end

	def show
		@student = Student.find_by(id: params[:id])
		render "show.json.jbuilder"
	end

	def update
		@student = Student.find_by(id: params[:id])
		
		@student.update(
		first_name: params[:first_name],
		last_name: params[:last_name],
		email: params[:email],
		password: params[:password],
		phone_number: params[:phone_number],
		short_bio: params[:short_bio],
		linkedin_url: params[:linkedin_url],
		twitter_handle: params[:twitter_handle],
		website_url: params[:website_url],
		online_resume_url: params[:online_resume_url],
		github_url: params[:github_url],
		photo: params[:photo]
		)

		if @student.save
			return true
		else
			return false
		end
	end

	def destroy
		student = Student.find_by(id: params[:id])
    student.destroy
	end
end
