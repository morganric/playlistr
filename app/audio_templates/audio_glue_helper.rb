module AudioGlueHelper

# A helper providing methods that can be executed in the +body+ section
# of +.glue+ templates.
# Methods are supposed to be based upon the +file+ and +url+ methods.
	
  # def say(text)
  #   url("http://some-speaking-service.com/say/#{text}")
  # end


  #  # Doesn't support :url snippets, only files in local file system.
  # # Doesn't handle rate and channels.
  # class SimpleAdapter < AudioGlue::BaseAdapter
  #   # Only this method is required to be implemented.
  #   def build(snippet_packet)
  #     # Extract file paths from snippets.
  #     # Ensure only :file snippets are present.
  #     file_paths = snippet_packet.snippets.map do |snippet|
  #       unless snippet.type == :file
  #         raise(AudioGlue::Error, "Only file snippets are supported")
  #       end
  #       snippets.source
  #     end

  #     # Build cat command
  #     command = "cat #{file_paths.join(' ')}"

  #     # Concatenate files and return result
  #     %{command}
  #   end
  # end

end
