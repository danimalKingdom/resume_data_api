class Api::CapstonesController < ApplicationController

  def create

    @capstone = Experience.new(
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


  end

  def update
    @capstone = Experience.find_by(id: params[:id])

    @capstone = Experience.update(
	 name: params[:name],
     description: params[:description],
     url: params[:job_title],
     snapshot: params[:shapshot],
     )

  end

  def destroy
    @capstone = Experience.find_by(id: params[:id])

    @capstone.destroy
  end
end

end

end
