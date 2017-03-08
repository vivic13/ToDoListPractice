class WorklistsController < ApplicationController

	def index 
		@worklists=Worklist.all
	end

	def show
		@worklist=Worklist.find(params[:id])
	end

	def new
		@worklist=Worklist.new
	end

	def create
		@worklist=Worklist.new(work)
		if @worklist.save
			redirect_to worklists_url
		else
			render :new
		end
	end

	def edit
		@worklist=Worklist.find(params[:id])
	end

	def update
		@worklist=Worklist.find(params[:id])
		if @worklist.update(work)
			redirect_to worklist_url(@worklist)
		else
			render :edit
		end
	end

	def destroy
		@worklist=Worklist.find(params[:id])
		@worklist.destroy
		redirect_to worklists_url
	end


	private

	def work
		params.require(:worklist).permit(:title, :duedate, :description)
	end

end
