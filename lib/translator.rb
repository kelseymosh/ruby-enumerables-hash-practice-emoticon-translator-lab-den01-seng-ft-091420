require 'yaml'
require 'pry'

def load_library(yaml_file)
  library = yaml.load_file('./lib/emoticons.yml')
    final = library.each_with_object ({}) do |(key, value), final_hash)
      if !final_hash[key]
        final_hash[key] = {
          :japanese => value[1],
          :english => value[0]
        }
    end
    final
  end
end

def get_english_meaning()

end

def get_japanese_emoticon()

end
