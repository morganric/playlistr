class Track < ActiveRecord::Base
   	   belongs_to :playlist
   	    include RankedModel
		  ranks :position
end
