require "elementy/version"
require "elementy/element"

module Elementy
  class << self
    def root
      File.dirname(File.dirname(__FILE__))
    end
  end
end
