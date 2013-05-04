class EpisodesController < ApplicationController
	def new
		@episode = Episode.new
	end

	def index
		@episodes = Episode.all
	end

	def edit

	end

	def destroy

	end
end
