  
module Adapter
  class SimpleAdapter < AudioGlue::BaseAdapter
    # Only this method is required to be implemented.
    def build(snippet_packet)
      # Extract file paths from snippets.
      # Ensure only :file snippets are present.
      file_paths = snippet_packet.snippets.map do |snippet|
        unless snippet.type == :file
          raise(AudioGlue::Error, "Only file snippets are supported")
        end
        snippets.source
      end

      # Build cat command
      command = "cat #{file_paths.join(' ')}"

      # Concatenate files and return result
      %{command}
    end
  end
end