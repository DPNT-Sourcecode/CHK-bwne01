# noinspection RubyUnusedLocalVariable
class Checkout

  ITEMS = { A: 50,
            B: 30,
            C: 20,
            D: 15
  }

  def checkout(skus)
    if validate(skus)
      -1
    else
      total(skus)
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
    true
  end

  def total(items)
    basket = items.chars
    bill = 0
    basket.each { |item|
      p ITEMS[item.to_s]
      bill += ITEMS[item.to_s]
    }
    bill
  end

end



