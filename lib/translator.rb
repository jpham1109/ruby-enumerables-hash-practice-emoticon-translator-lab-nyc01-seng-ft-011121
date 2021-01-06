# require modules here
require "yaml"
require "pry"

def load_library(path)
  emoticons = {:meaning => {}, :emote => {}}
  YAML.load_file('./lib/emoticons.yml').each do |meaning, lang|
    lang = [eng, jpn]
    emoticons[:meaning][jan] = meaning
    emoticons[:emote][eng] = jpn
  end
  emoticons
  binding.pry
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
    if english
      english
    else
      sorry_message
    end
end