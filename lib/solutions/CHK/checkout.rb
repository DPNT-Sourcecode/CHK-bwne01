# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    validate(skus)
  end

  def validate(items)
    items = items.chars
    valid = ('A'..'D').to_a
    items.each { |item|
      if !valid.include? item
        return -1
      end
    }
  end

end

