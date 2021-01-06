# require modules here
require "yaml"
require "pry"
file = YAML.load_file('./lib/emoticons.yml')
puts file.inspect

def load_library(file)
  # code goes here
  file = YAML.load_file(---'./lib/emoticons.yml')
  emoticons = file.each_with_object({}) do |(k, v), emoticons|
    lang = [:english, :japanese]
    emoticons[k] = Hash[lang[0], v[0], lang[1], v[1]]
  end
  emoticons
  #binding.pry
end
#binding.pry 


def get_japanese_emoticon(file, w_emoticon)
  load_library(file)
  emoticons = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  j_emoticon = emoticons.each do |k, v|
    w_emoticon = emoticons[k][:english]
    #binding.pry
    if emoticons[k].value?(w_emoticon)
      j_emoticon = emoticons[k][:japanese]
      #binding.pry
    else sorry_message
    end
  end
end



def get_english_meaning(file, j_emoticon)
  load_library(file)
  emoticons = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  english = emoticons.each do |k,v|
    j_emoticon = emoticons[k][:japanese]
    if emoticons[k].value?(j_emoticon)
      english = emoticons[k]
    else sorry_message
    end
    #binding.pry
  end
end