# noinspection RubyUnusedLocalVariable
class Checkout

  def checkout(skus)
    validate(skus)
  end

  def validate(items)
    items.include? ""
  end

end

