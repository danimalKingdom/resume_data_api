class Api::CapstonesController < ApplicationController

  def create

    @capstone = Capstone.new(
     name: params[:name],
     description: params[:description],
     url: params[:job_title],
     snapshot: params[:shapshot],
     )

    if @capstone.save
      if_saved = true
      else
      if_saved = false
    end
        redirect_to "/students/#{params[:student_id]}"



  end

  def update
    @capstone = Capstone.find_by(id: params[:id])

    @capstone.update(
	 name: params[:name],
     description: params[:description],
     url: params[:job_title],
     snapshot: params[:shapshot],
     )

        redirect_to "/students/#{params[:student_id]}"


  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])

    @capstone.destroy
  end
end

end

end
