class Playlist < ActiveRecord::Base


 acts_as_taggable
 

	require 'carrierwave/orm/activerecord'

	mount_uploader :image, ImageUploader
	# mount_uploader :files, AudioUploader
	has_attachments :audio
	validates_presence_of :audio 

	belongs_to :user


	has_many :tracks, -> { order("position ASC") }
 #   	accepts_nested_attributes_for :tracks

end
