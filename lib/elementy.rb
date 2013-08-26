require "elementy/version"
require "elementy/element"

module Elementy
  class << self
    def root
      File.dirname(File.dirname(__FILE__))
    end

    # Searches for and returns an element if found.
    #
    # @param term [string, symbol, integer] the name, symbol, or atomic
    # number to search for
    # @return [Elementy::Element]
    def search(term)
      Elementy::Element.search term
    end
  end
end
