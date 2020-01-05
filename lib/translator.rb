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
  loadedfile.each() { |key, value| emos[:get_emoticon][value[0]] = value[1] }
  emos
end

def get_japanese_emoticon(file,emoticon)
  data_loaded = load_library(file)
  return_value = data_loaded[:get_emoticon].fetch(emoticon, "Sorry, that emoticon was not found")
end

def get_english_meaning(file,emoticon)
  data_loaded = load_library(file)
  return_value = data_loaded[:get_meaning].fetch(emoticon, "Sorry, that emoticon was not found")
end
