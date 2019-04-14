# noinspection RubyUnusedLocalVariable
class Checkout

  ITEMS = { A: 50,
            B: 30,
            C: 20,
            D: 15
  }

  def checkout(skus)
    unless validate(skus)
      return -1
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
  end

  def total(items)
    basket = items.chars
    bill = 0
    basket.each { |item|
      puts "Your item costs #{ITEMS[item.intern]}"
      bill += ITEMS[item.intern]
    }
    bill
  end

end







