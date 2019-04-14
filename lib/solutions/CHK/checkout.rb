# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    p skus
    p validate(skus)
  end

  def validate(items)
    if !items.include? "A...D"
      -1
    else
      items
    end
  end

end


