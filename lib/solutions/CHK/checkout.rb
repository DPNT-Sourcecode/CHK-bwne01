# noinspection RubyUnusedLocalVariable
class Checkout

  ITEMS = {
    A: 50,
    B: 30,
    C: 20,
    D: 15,
    E: 40
  }

  DISCOUNT = [
    {item: "A", number: 3, discount: 20},
    {item: "B", number: 2, discount: 15},
    {item: "E", number: 2, discount: 30}
  ]

  def checkout(skus)
    @basket = skus.chars
    unless validate
      return -1
    else
      total - discount
    end
  end

  def validate
    valid = ('A'..'E').to_a
    @basket.each { |item|
      if !valid.include? item
        return false
      end
    }
  end

  def total
    bill = 0
    @basket.each { |item|
      bill += ITEMS[item.intern]
    }
    bill
  end

  def discount
    money_off = 0
    DISCOUNT.each { |hash|
      puts "The number of #{hash[:item]} in your basket is #{@basket.count(hash[:item])}"
      puts "The multi-buy number is #{hash[:number]}"
      p multiplier = @basket.count(hash[:item]) / hash[:number]
      money_off += hash[:discount] * multiplier
      p "Your discount is #{money_off}"
    }
    money_off
  end

  def groupinator(item)
    discount_multiplier = 0
    DISCOUNT.each { |hash|
      if item == hash[:item]
        discount_multiplier = @basket.count(item) / hash[:number]
      end
    }
    discount_multiplier
  end

end




