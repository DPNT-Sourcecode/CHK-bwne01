# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    validate(skus)
  end

  def validate(items)
    items = items.chars
    valid = ('A'..'D').to_a
    items.each { |item|
      puts "Checking item #{item}"
      if !valid.include? item
        puts "Invalid item found: #{item}"
        return -1
      end
    }
      "Valid"
  end

end





