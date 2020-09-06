require 'pry'
require 'yaml'

def load_library(data)
  emote_hash = {}
  YAML.load_file(data).each do |key, value|
    emote_hash[key] ={
      :english => value[0],
      :japanese => value[1]
    }
   end
   emote_hash
end

def get_english_meaning(data, emoticon)
 load_library(data).each do |key, value|
   if value[:japanese] == emoticon
     return key
  end
 end
 return "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(data, emoticon)
  load_library(data).each do |key,value|
    if value[:english] == emoticon
      return value[:japanese]
  end
end
return "Sorry, that emoticon was not found"
end
