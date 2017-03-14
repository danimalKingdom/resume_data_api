class Api::ExperiencesController < ApplicationController
  def create

    @experience = Experience.new(
     start_date: params[:start_date],
     end_date: params[:end_date],
     job_title: params[:job_title],
     company_name: params[:company_name],
     details: params[:details],
     student_id: params[:student_id]
     )

    if @experience.save
      if_saved = true
      else
      if_saved = false
    end


  end

  def update
    @experience = Experience.find_by(id: params[:id])

    @experience = Experience.update(
     start_date: params[:start_date],
     end_date: params[:end_date],
     job_title: params[:job_title],
     company_name: params[:company_name],
     details: params[:details],
     student_id: params[:student_id]
     )

  end

  def destroy
    @experience = Experience.find_by(id: params[:id])

    @experience.destroy
  end
end
