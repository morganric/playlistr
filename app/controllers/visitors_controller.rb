class VisitorsController < ApplicationController


	def about
	end

	def genres

	end

	def search 
		@q = params[:q]
		@playlists = Playlist.where(:title => @q)
		
	end

end
