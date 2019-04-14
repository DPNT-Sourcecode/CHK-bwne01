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
    unless validate(skus)
      return -1
    else
      total(skus) - discount(skus)
    end
  end

  def validate(items)
    items = items.chars
    valid = ('A'..'D').to_a
    items.each { |item|
      if !valid.include? item
        return false
      end
    }
  end

  def total(items)
    basket = items.chars
    bill = 0
    basket.each { |item|
      bill += ITEMS[item.intern]
    }
    bill
  end

  def discount(items)
    money_off = 0
    basket = items.chars
    DISCOUNT.each { |hash|
      if basket.include? hash[:item] && basket.count(hash[:item]) == hash[:number]
        money_off += hash[:discount]
      end
    }
    p money_off
  end

end





