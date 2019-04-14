# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    p skus
    p validate(skus)
  end

  def validate(items)
    p items = items.chars
    unless items.include? ("A".."D").to_a
      -1
    else
      "Valid"
    end
  end

end

