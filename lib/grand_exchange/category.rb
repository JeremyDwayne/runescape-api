module Runescape
  module GrandExchange
    class Category
      attr_reader :category, :items 

      def initialize(id, items)
        @category = id
        @items = items
      end


      # Use to find all items within a category which start with a specific letter
      def self.find_letter(id, alpha = 'a')
        @page = 1
        @empty = false
        @attributes = {}
        @items = []
        while !@empty do
          response = Faraday.get("#{ITEMS_URL}category=#{id}&alpha=#{alpha}&page=#{@page}") 
          attributes = JSON.parse(response.body)
          @empty = attributes["items"].empty?
          if !@empty
            attributes["items"].each { |item| @items << item }
          else
            puts "Response Empty: #{id} #{alpha}"
          end
          @page += 1
        end
        new(id, @items)
      end


      # Use to find all items within a category
      def self.find_all(id)
        @attributes = {}
        @items = []
        @alphabet = ('a'..'z').to_a << ('%')
        @alphabet.each do |alpha|
          @empty = false
          @page = 1
          while !@empty do
            response = Faraday.get("#{ITEMS_URL}category=#{id}&alpha=#{alpha}&page=#{@page}") 
            attributes = JSON.parse(response.body)
            @empty = attributes["items"].empty?
            if !@empty
              attributes["items"].each { |item| @items << item }
            else
              puts "Finished Querying Category #{id} Letter: #{alpha}"
            end
            @page += 1
          end
        end
        new(id, @items)
      end

      def total
        @items.count
      end

    end
  end
end
