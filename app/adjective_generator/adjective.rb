require 'yaml'

module AdjectiveGenerator
  class Adjective
    FILE_ADJECTIVES = File.join(File.dirname(__FILE__), '..', 'data', 'adjectives.yml')

    def self.list
      @@adjective_list ||= YAML.load_file(FILE_ADJECTIVES).compact
    end

    def self.random
      list[rand(list.length)]
    end
  end
end