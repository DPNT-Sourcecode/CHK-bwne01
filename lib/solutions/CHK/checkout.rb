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
      if @basket.count(hash[:item]) == hash[:number]
        money_off += hash[:discount] * groupinator(hash[:item])
      end
    }
    money_off
  end

  def groupinator(item)
    number_of_items = 0
    DISCOUNT.each { |hash|
      if item == hash[:item].to_s
        puts "The number of times #{item} appears in your basket is #{@basket.count(item)}"
        puts "The discount group size is #{hash[:number]}"
        number_of_items = @basket.count(item) / hash[:number]
        puts number_of_items
      end
    }
    number_of_items
  end

end



