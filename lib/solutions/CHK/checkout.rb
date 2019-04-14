# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    validate(skus)
  end

  def validate(items)
    items = items.chars
    p valid = ('A'..'D').to_a
    if items.include? valid
      "Valid"
    else
      -1
    end
  end

end


