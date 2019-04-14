# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    validate(skus)
  end

  def validate(items)
    p items = items.chars
    p valid = ('A'..'D').to_a
    items.each { |item|
      if valid.include? item
        "Valid"
      else
        return -1
      end
    }
  end

end



