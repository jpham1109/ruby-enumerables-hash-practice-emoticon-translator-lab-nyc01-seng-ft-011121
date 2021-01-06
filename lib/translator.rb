# require modules here
require "yaml"
require "pry"
emoticons = YAML.load_file('./lib/emoticons.yml')
puts emoticons.inspect

def load_library(emoticons)
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


def get_japanese_emoticon(emoticons, w_emoticon)
  load_library(emoticons)
  emoticons = load_library(emoticons)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  j_emoticon = load_library(emoticons).each do |k, v|
    w_emoticon = load_library(emoticons)[k][:english]
    #binding.pry
    if load_library(emoticons)[k].value?(w_emoticon)
      j_emoticon = load_library(emoticons)[k][:japanese]
      #binding.pry
    else sorry_message
    end
  end
end



def get_english_meaning(emoticons, j_emoticon)
  load_library(emoticons)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  english = load_library(emoticons).each do |k,v|
    j_emoticon = load_library(emoticons)[k][:japanese]
    if load_library(emoticons)[k].value?(j_emoticon)
      english = load_library(emoticons)[k][:]
    else sorry_message
    end
    #binding.pry
  end
end