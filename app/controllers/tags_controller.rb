class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end
	def index
		@tags = Tag.all
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' Destroyed!"
		
		redirect_to action: "index"
	end
=begin
	def show
	@tag = Tag.find(params[:id])

	end
	def new
		@tag = Tag.new
	end
	def create
		@tag = Tag.new(tag_params)
		@tag.save
		redirect_to tag_path(@tag)
	end

	def edit
		@tag = Tag.find(params[:id])
	end
	def update
		@tag = Tag.find(params[:id])
		@tag.update(tag_params)

		flash.notice = "Tag '#{@tag.title}' Updated!"

		redirect_to tag_path(@tag)
	end
=end
end
