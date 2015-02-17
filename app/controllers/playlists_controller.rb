class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit, :update, :destroy, :plays]
  after_action :create_track_list, :only => :create

  before_filter :authenticate_user!,  except: [:index, :show]
  after_action :verify_authorized, only: [:new]

    require 'open-uri'

    require 'mp3info'
  include PlaylistsHelper

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists = Playlist.all.order('plays DESC')
      # authorize @user
  end

  def plays

    @playlist.plays = @playlist.plays.to_i + 1
    @playlist.save

    respond_to do |format|
     if @playlist.save
       format.json { render :show, status: :ok, location: @playlist }
     else
       format.html { render action: 'new' }
       format.json { render json: @playlist.errors, status: :unprocessable_entity }
     end
   end

  end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
      # authorize @user
    @playlists = Playlist.all.reverse
    
    @list = []

    @playlist.audio_files.each do |track|
      @list << track.fullpath
    end

    @list = @list.reverse

    @tracklist = []

    Track.where(:playlist => @playlist.id).each do |track|
        @tracklist << track
    end

    @tracklist = @tracklist.reverse

    # @playlist.audio_files.each do |track|
    #   Mp3Info.open(open(track.fullpath)) do |mp3info|
    #       @tracklist << mp3info 
    #   end
    # end
  end

  # GET /playlists/new
  def new
    @playlist = Playlist.new
    # @tracks = @playlist.tracks.build
      authorize @user
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists
  # POST /playlists.json
  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.user_id = current_user.id

    respond_to do |format|
     if @playlist.save
       # params[:tracks]['audio'].each do |a|
          # @track = @playlist.tracks.create!(:audio => a, :playlist_id => @playlist.id)
       # end
       format.html { redirect_to @playlist, notice: 'Post was successfully created.' }
     else
       format.html { render action: 'new' }
     end
   end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to @playlist, notice: 'Playlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist }
      else
        format.html { render :edit }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist.destroy
    respond_to do |format|
      format.html { redirect_to playlists_url, notice: 'Playlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    def create_track_list
      track_list(@playlist)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:title, :description, :audio, :image, :published, :user_id, :plays, :list, tracks_attributes: [:id, :playlist_id, :audio])
    end
end
