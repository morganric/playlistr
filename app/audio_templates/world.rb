  class WorldTemplate < AudioGlue::Template
    # Specify the characteristics of an output audio file:
    head do
      format :mp3
      rate 44100
      channels 2
    end

    # Lets concatenate 2 mp3 files:
    body do
                            
        - url("http://res.cloudinary.com/playlistr/raw/upload/v1421616728/ujrraktbiswpo5anwz8o.mp3")   # Remote file
    end
  end
