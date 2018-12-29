require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.map do |style, language_list|
    language_list.map do |language, type|
      if new_hash[language]
        new_hash[language][:style] << style
      else
        new_hash[language] = {:type => type[:type], :style => [style]}
      end
    end
  end
  new_hash
end
