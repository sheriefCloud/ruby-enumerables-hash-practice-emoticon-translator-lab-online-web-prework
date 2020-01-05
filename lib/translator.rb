# require modules here
require "yaml"
require "pry"

def load_library(sourcefile)
  loadedfile = YAML.load_file sourcefile
  # Key = meaning | value = array | arary[0] = english && array[1] = Japanees

  emos = {}

  emos[:get_meaning] = {}
  emos[:get_emoticon] = {}

  loadedfile.each() { |key, value| emos[:get_meaning][value[1]] = key }
  loadedfile.each() do |key, value|
    e_emo_value = loadedfile[key][value[0]]
    emos[:get_emoticon][value[0]] = e_emo_value

  end
  emos
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
