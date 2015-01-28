class Playlist < ActiveRecord::Base

	require 'carrierwave/orm/activerecord'

	mount_uploader :image, ImageUploader
	has_attachments :audio
	# validates_presence_of :audio 

	belongs_to :user


	# has_many :tracks
 #   	accepts_nested_attributes_for :tracks
end
