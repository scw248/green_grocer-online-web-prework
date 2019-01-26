require "pry"

def consolidate_cart(array)
  consolidated_hash = {}
  
  array.each do |items|
    items.each do |item, attributes|
      if !consolidated_hash[item]
        consolidated_hash[item] = attributes
        consolidated_hash[item][:count] = 1
      else
        consolidated_hash[item][:count] += 1
        #binding.pry
      end
    end
  end
  consolidated_hash
end

def apply_coupons(consolidated_hash, coupon)
  coupon.each do |things|
    things.each do |thing, val|
      
      
      consolidated_hash.each do |items|
        items.each do |item, attributes|

          if val == item
            binding.pry
            consolidated_hash["#{item} W/COUPON"] 
          end
        end
      end
    end
end
  consolidated_hash
end

def checkout
end

