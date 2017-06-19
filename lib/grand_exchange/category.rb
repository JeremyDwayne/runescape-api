module Runescape
  module GrandExchange
    class Category
      attr_reader :misc, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z

      def initialize(attributes)
        attributes["alpha"].each do |key|
          k = key["letter"] != "#" ? key["letter"] : "misc"
          v = key["items"]
          
          instance_variable_set("@#{k}", v)
        end
      end

      def self.find(id)
        response = Faraday.get("#{CATEGORY_URL}category=#{id}")
        attributes = JSON.parse(response.body)
        # puts attributes.inspect
        new(attributes)
      end

    end
  end
end

#{"types"=>[], 
#"alpha"=>[{"letter"=>"#", "items"=>0}, {"letter"=>"a", "items"=>6}, {"letter"=>"b", "items"=>8}, {"letter"=>"c", "items"=>1}, {"letter"=>"d", "items"=>3}, {"letter"=>"e", "items"=>2}, {"letter"=>"f", "items"=>3}, {"letter"=>"g", "items"=>5}, {"letter"=>"h", "items"=>2}, {"letter"=>"i", "items"=>5}, {"letter"=>"j", "items"=>0}, {"letter"=>"k", "items"=>1}, {"letter"=>"l", "items"=>2}, {"letter"=>"m", "items"=>5}, {"letter"=>"n", "items"=>1}, {"letter"=>"o", "items"=>1}, {"letter"=>"p", "items"=>5}, {"letter"=>"q", "items"=>0}, {"letter"=>"r", "items"=>3}, {"letter"=>"s", "items"=>27}, {"letter"=>"t", "items"=>2}, {"letter"=>"u", "items"=>1}, {"letter"=>"v", "items"=>5}, {"letter"=>"w", "items"=>2}, {"letter"=>"x", "items"=>0}, {"letter"=>"y", "items"=>0}, {"letter"=>"z", "items"=>0}]}
