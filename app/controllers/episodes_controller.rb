class EpisodesController < ApplicationController
	before_filter :authorize, :except => :index

	def new
		@episode = Episode.new
	end

	def create
		@episode = Episode.new(params[:episode])
		if @episode.save
			flash[:notice] = "Successfully created episode."
			redirect_to root_path
		else
			render :new
		end
	end

	def index
		@episodes = Episode.all
	end

	def edit
		@episode = Episode.find(params[:id])
	end

	def update
		@episode = Episode.find(params[:id])
		if @episode.update_attributes(params[:episode])
			flash[:notice] = "Successfully updated episode."
			redirect_to root_path
		else
			render :edit
		end
	end

	def destroy
		# @episode = Episode.find(params[:id])
		# @episode.destroy
		# or
		# Episode.find(params[:id]).destroy
		# or
		Episode.destroy(params[:id])
		flash[:notice] = "Successfully deleted episode."
		redirect_to root_path
	end
end