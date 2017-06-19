module Runescape
  module GrandExchange
    class Category
      attr_reader :misc, :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z

      def initialize(attributes)
        alpha = attributes["alpha"]
        @misc = alpha[0]
        @a = alpha[1]["items"]
        @b = alpha[2]["items"]
        @c = alpha[3]["items"]
        @d = alpha[4]["items"]
        @e = alpha[5]["items"]
        @f = alpha[6]["items"]
        @g = alpha[7]["items"]
        @h = alpha[8]["items"]
        @i = alpha[9]["items"]
        @j = alpha[10]["items"]
        @k = alpha[11]["items"]
        @l = alpha[12]["items"]
        @m = alpha[13]["items"]
        @n = alpha[14]["items"]
        @o = alpha[15]["items"]
        @p = alpha[16]["items"]
        @q = alpha[17]["items"]
        @r = alpha[18]["items"]
        @s = alpha[19]["items"]
        @t = alpha[20]["items"]
        @u = alpha[21]["items"]
        @v = alpha[22]["items"]
        @w = alpha[23]["items"]
        @x = alpha[24]["items"]
        @y = alpha[25]["items"]
        @z = alpha[26]["items"]
      end


      def self.find(id)
        response = Faraday.get("#{CATEGORY_URL}category=#{id}")
        attributes = JSON.parse(response.body)
        puts attributes.inspect
        new(attributes)
      end

    end
  end
end

#{"types"=>[], 
#"alpha"=>[{"letter"=>"#", "items"=>0}, {"letter"=>"a", "items"=>6}, {"letter"=>"b", "items"=>8}, {"letter"=>"c", "items"=>1}, {"letter"=>"d", "items"=>3}, {"letter"=>"e", "items"=>2}, {"letter"=>"f", "items"=>3}, {"letter"=>"g", "items"=>5}, {"letter"=>"h", "items"=>2}, {"letter"=>"i", "items"=>5}, {"letter"=>"j", "items"=>0}, {"letter"=>"k", "items"=>1}, {"letter"=>"l", "items"=>2}, {"letter"=>"m", "items"=>5}, {"letter"=>"n", "items"=>1}, {"letter"=>"o", "items"=>1}, {"letter"=>"p", "items"=>5}, {"letter"=>"q", "items"=>0}, {"letter"=>"r", "items"=>3}, {"letter"=>"s", "items"=>27}, {"letter"=>"t", "items"=>2}, {"letter"=>"u", "items"=>1}, {"letter"=>"v", "items"=>5}, {"letter"=>"w", "items"=>2}, {"letter"=>"x", "items"=>0}, {"letter"=>"y", "items"=>0}, {"letter"=>"z", "items"=>0}]}
