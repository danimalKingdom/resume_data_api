class Api::SkillsController < ApplicationController
	def create
	    @skill = Skill.new(
	     skill_name: params[:skill_name],
	     student_id: params[:student_id]
	     )

          redirect_to "/students/#{params[:student_id]}"

	end

  def update
    @skill = Skill.find_by(id: params[:id])

    @skill.update(
     skill_name: params[:skill_name],
     student_id: params[:student_id]
     )

        redirect_to "/students/#{params[:student_id]}"


  end

  def destroy
    @skill = Skill.find_by(id: params[:id])

    @skill.destroy
  end
end

end
