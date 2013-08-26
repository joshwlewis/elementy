require 'yaml'
module Elementy
  class Element
    attr_accessor :number, :symbol, :name, :molar, :group, :position, :electrons

    class << self
      include Enumerable
      def all
        @all ||= defaults.map { |d| new d }
      end

      def each
        all.each { |e| yield e }
      end

      def defaults
        YAML.load(File.open "#{Elementy.root}/data/elements.yaml")
      end

      def search(term)
        if term.is_a?(Numeric) || term =~ /\A\d*\Z/
          find { |e| e.number == term.to_i }
        else
          find { |e| [e.symbol, e.name].map(&:upcase).include? term.to_s.upcase }
        end
      end
    end

    def initialize(attributes)
      attributes.each do |k,v|
        send "#{k}=", v
      end
    end

    def to_hash
      { symbol: symbol, name: name, number: number, molar: molar, 
        position: position, group: group, electrons: electrons }
    end

    def to_console
      to_hash.map do |k,v|
        "   #{k}:#{' ' * (12-k.length)}#{v}"
      end.join("\n")
    end
  end
end