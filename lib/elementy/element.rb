require 'yaml'
module Elementy
  class Element
    extend Enumerable
    attr_accessor :group, :position, :number, :name, :molar, :symbol, :electrons

    def self.all
      @all ||= defaults.map{|d| new d }
    end

    def self.each
      all.each{|e| yield e }
    end

    def self.defaults
      YAML.load(File.open("#{Elementy.root}/data/elements.yaml"))
    end

    def self.search(term)
      if term =~ /\A\d*\Z/
        self.find{|e| e.number == term.to_i}
      else
        self.find{|e| [e.symbol, e.name].any?{|a| a.upcase == term.upcase}}
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