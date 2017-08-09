# require modules here
require 'yaml'

def translate_to_word(hashEmoji)
  finalHash = Hash.new
  hashEmoji.each do |value, emojiArray|
    finalHash[emojiArray[1]] = value
  end
  finalHash
end

def translate_to_english_emoji(hashEmoji)
  finalHash = Hash.new
  hashEmoji.each do |value, emojiArray|
    finalHash[emojiArray[0]] = emojiArray[1]
  end
  finalHash
end


def load_library(filePath)
  # code goes here
emojiFile = YAML.load_file(filePath)
returnHash = {"get_meaning" => translate_to_word(emojiFile), "get_emoticon" => translate_to_english_emoji(emojiFile)}

returnHash
end

def get_japanese_emoticon(path, emojiChar)
  # code goes here
  hashTransform = load_library(path)
  if  hashTransform["get_emoticon"][emojiChar]
    hashTransform["get_emoticon"][emojiChar]
  else
    return "Sorry, that emoticon was not found"
  end

end

def get_english_meaning(path, emojiChar)
  # code goes here
  hashTransform = load_library(path)
  if  hashTransform["get_meaning"][emojiChar]
    hashTransform["get_meaning"][emojiChar]
  else
    return "Sorry, that emoticon was not found"
  end
end


=begin
take in the hash return a hash
go into the hash
go in again and get the [1] value
chreate a hash that makes the key the japanese value and the value is the word

take in the hash return a hash
go into the hash
go in again and get the [0] & [1] value
chreate a hash that makes the key the japanese value and the value is the english emoji


take in a hash
=end
