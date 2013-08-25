require 'test_helper'

describe Elementy::Element do
  it '::all must be an array' do
    Elementy::Element.all.must_be_instance_of Array
  end

  it "must be Enumerable" do
    Elementy::Element.must_be_kind_of Enumerable
  end

  describe "search" do
    it "should find by number" do
      Elementy::Element.search(12).must_be_instance_of Elementy::Element
    end

    it "should find by number string" do
      Elementy::Element.search('17').must_be_instance_of Elementy::Element
    end

    it "should find by symbol" do
      Elementy::Element.search(:h).must_be_instance_of Elementy::Element
    end

    it "should find by symbol string" do
      Elementy::Element.search("h").must_be_instance_of Elementy::Element
    end
    
    it "should find by name" do
      Elementy::Element.search("helium").must_be_instance_of Elementy::Element
    end
  end

end