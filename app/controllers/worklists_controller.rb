class WorklistsController < ApplicationController

	before_action :find_list, only: [:show, :edit, :update, :destroy]

	def index 
		@worklists=Worklist.page(params[:page]).per(5)  #預期使用者告訴我們他要第幾頁:page
	end

	def show
		@page_title=@worklist.title
	end

	def new
		@worklist=Worklist.new
	end

	def create
		@worklist=Worklist.new(work)
		if @worklist.save
			redirect_to worklists_url
			flash[:notice] = "event was successfully created"
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
		params.require(:worklist).permit(:title, :duedate, :description, :school_id, :review_ids =>[])
	end

	def find_list		
		@worklist=Worklist.find(params[:id])
	end

end
