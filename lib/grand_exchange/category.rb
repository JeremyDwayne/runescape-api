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
        @items = []
        @items = fetch_response(@items, alpha, id)
        new(id, @items)
      end


      # Use to find all items within a category
      def self.find_all(id)
        @items = []
        @alphabet = ('a'..'z').to_a << ('%')
        @alphabet.each do |alpha|
          @items = fetch_response(@items, alpha, id)
        end
        new(id, @items)
      end

      def self.fetch_response(items, alpha, id)
        @empty = false
        @page = 1
        @items = items
        while !@empty do
          response = Faraday.get("#{ITEMS_URL}category=#{id}&alpha=#{alpha}&page=#{@page}") 
          attributes = JSON.parse(response.body)
          if !@empty = attributes["items"].empty?
            attributes["items"].each { |item| @items << item }
          else
            puts "Finished Querying Category #{id} Letter: #{alpha}"
            break
          end
          @page += 1
        end
        return @items
      end

      def total
        @items.count
      end

    end
  end
end
