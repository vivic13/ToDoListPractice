class WorklistsController < ApplicationController

	before_action :find_list, only: [:show, :edit, :update, :destroy]

	def index 
		@worklists=Worklist.order(duedate: :asc)
	end

	def show
	
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

	end

	def update
		if @worklist.update(work)
			redirect_to worklist_url(@worklist)
		else
			render :edit
		end
	end

	def destroy
		@worklist.destroy
		redirect_to worklists_url
	end


	private

	def work
		params.require(:worklist).permit(:title, :duedate, :description)
	end

	def find_list		
		@worklist=Worklist.find(params[:id])
	end

end
