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
    {item: "A", number: 5, discount: 50},
    {item: "A", number: 3, discount: 20},
    {item: "B", number: 2, discount: 15},
    {item: "E", number: 2, discount: 30}
  ]

  def checkout(skus)
    @basket = skus.chars.sort
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
      multiplier = @basket.count(hash[:item]) / hash[:number]
        if @basket.count(hash[:item]) % hash[:number] <= 0
          money_off += hash[:discount] * multiplier
          slice_length = hash[:number] - 1
          @basket.slice!(0,slice_length)
        end
    }
    money_off
  end

end


