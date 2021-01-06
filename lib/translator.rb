# require modules here
require "yaml"
require "pry"
file = YAML.load_file('./lib/emoticons.yml')
puts file.inspect

def load_library(file)
  
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
  emoticons = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  j_emoticon = emoticons.each do |k, w_emoticon|
    #w_emoticon = emoticons[k][:english]
    #binding.pry
    if emoticons[k].value?(w_emoticon)
      j_emoticon = emoticons[k][:japanese]
      #binding.pry
    else p sorry_message
    end
    #binding.pry
  end
  j_emoticon
end



def get_english_meaning(file, j_emoticon)
  emoticons = load_library(file)
  english = ""
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  emoticons.each do |k, v|
    #binding.pry
    if emoticons[k].value?(j_emoticon)
      english = k
    #binding.pry
    else 
      sorry_message
    end
    #binding.pry
  end
  binding.pry
  english
end