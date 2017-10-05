class Adviser
  def initialize(user)
  end

  def advise
  end

  private

  def search_for_creteria
    Product.search_by(store, collection, user)
  end
end
