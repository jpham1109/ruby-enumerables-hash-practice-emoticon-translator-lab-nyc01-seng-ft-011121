# require modules here
require "yaml"
require "pry"
file = YAML.load_file('./lib/emoticons.yml')
puts file.inspect

def load_library(file)
  file = YAML.load_file(---'./lib/emoticons.yml')
  emoticons = {:meaning => {}, :emote => {}}
  file.each do |meaning, lang|
    lang = [eng, jpn]
    emoticons[:meaning][jan] = meaning
    emoticons[:emote][eng] = jpn
  end
  emoticons
  #binding.pry
end
#binding.pry 


def get_japanese_emoticon(file, w_emoticon)
  emoticons = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  j_emoticon = emoticons[:emote][w_emoticon]
    if j_emoticon
      j_emoticon
    else
      sorry_message
  end
end



def get_english_meaning(file, j_emoticon)
  emoticons = load_library(file)
  sorry_message = "Sorry, that emoticon was not found"
  #binding.pry
  english = emoticons[:meaning][j_emoticon]
    if emoticons[k].value?(j_emoticon)
      english = k
      #binding.pry
    else p sorry_message
    end
    #binding.pry
  end
  english
end