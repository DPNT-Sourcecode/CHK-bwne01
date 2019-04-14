# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    p skus
    p validate(skus)
  end

  def validate(items)
    unless items.chars.include? ("A".."D").to_a
      -1
    else
      "Valid"
    end
  end

end



