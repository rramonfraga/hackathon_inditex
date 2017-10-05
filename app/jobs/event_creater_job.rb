class EventCreaterJob < ApplicationJob
  queue_as :default

  def perform(name, store_id, product_id, user_id)
    Event.create!(
      name: name,
      store_id: store_id,
      product_id: product_id,
      user_id: user_id
    )
  end
end
