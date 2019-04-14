# noinspection RubyUnusedLocalVariable
class Checkout

  ITEMS = {
    A: 50,
    B: 30,
    C: 20,
    D: 15
  }

  DISCOUNT = [
    {item: "A", number: 3, discount: 20},
    {item: "B", number: 2, discount: 15}
  ]

  def checkout(skus)
    @basket = skus.chars
    unless validate
      return -1
    else
      p "Your total is #{total}"
      p "Your discount is #{discount}"
      total - discount
    end
  end

  def validate
    valid = ('A'..'D').to_a
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
      money_off += hash[:discount] * groupinator(hash[:item])
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
