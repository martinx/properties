# coding: utf-8
require 'yaml'

module Properties
  module Parse
    
    class<<self

      def load property_file
        Properties.properties = YAML.load File.readlines(property_file).join("\n").gsub("=", ": ")
      end

      def get key
        Properties.properties[key.to_s]
      end
      
      def keys
        Properties.properties.keys
      end
      
      def values
        Properties.properties.values
      end
      
      alias load_properties load
      
      alias get_property get
      
    end
  end
end