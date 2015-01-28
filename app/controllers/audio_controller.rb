
  class AudioController < ApplicationController
    before_action :set_playlist, only: [:show, :edit, :update, :destroy, :audio]

  require 'audio_glue'
  require 'audio_glue/sox_adapter'
  require 'net/http'
  include Adapter

  def new
    @audio = Audio.new
  end


    class HelloWorldTemplate < AudioGlue::Template
      # Specify the characteristics of an output audio file:
      head do
        format :mp3
        rate 44100
        channels 2
      end

      # Lets concatenate 2 mp3 files:
      body do
          - url(@playlist.audio_files.last.fullpath) 
      end
    end

    # Convert hello.wav to mp3 and send it as hello_world.mp3:
    def audio
    	@playlist = Playlist.last
      send_glued_audio('list', :playlist => @playlist)
    end

    # Concatenate hello.wav and bye.mp3, convert to mp3, and send
    # as hello_world.mp3:

    private

        # Never trust parameters from the scary internet, only allow the white list through.
      def audio_params
        params.require(:audio).permit(:audio)
      end


  end