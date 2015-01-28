module PlaylistsHelper
  require "mp3info"

def track_list(playlist)
  @playlist = playlist

  @playlist.audio_files.each do |track|
    file = open(track.fullpath)
    @track = Track.new
    Mp3Info.open(file) do |mp3info|
    @track.artist = mp3info.tag.artist
    @track.song = mp3info.tag.title
    end
    @track.playlist_id = @playlist.id
    @track.audio = track.fullpath
    @track.save
  end
end

end