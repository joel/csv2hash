require 'active_support/core_ext'
require 'yaml'

module Csv2hash
  class YamlLoader

    attr_reader :conf
    attr_accessor :definition

    def initialize file
      @conf = YAML.load_file(file)
      self.conf.deep_symbolize_keys!
    end

    def load!
      mapping         = self.conf.fetch(:mapping)
      header_size     = self.conf.fetch(:header_size)
      structure_rules = self.conf.fetch(:structure_rules)

      self.definition = Csv2hash::Main.generate_definition self.conf.fetch(:name) do
        set_type            { mapping }
        set_header_size     { header_size }
        set_structure_rules { structure_rules }
      end

      self.conf.fetch(:rules).each do |rule|
        definition.cells << Cell.new(rule)
      end

      Csv2hash::Main[conf.fetch(:name)] = self.definition
    end
  end
end
