# playlist.rb
require 'yaml'
require 'pry'

playlist_name = "playlist.txt"
config = YAML.load_file('config.yaml')
dir_list = config["directories"]

Dir.glob("/media/space/Music/workmusic/*.mp3")
File.open(playlist_name, 'w') do |file|
  dir_list.each do |dir|
    search_string = File.join(dir + "/" + "*.mp3")
    mp3_lines = Dir.glob(search_string)
    mp3_lines.each {|line| file.puts(line) }
  end
end

