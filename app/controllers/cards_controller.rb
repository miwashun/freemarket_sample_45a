class CardsController < ApplicationController
  protect_from_forgery except: :create
  def index
    card = Card.find_by(user_id: params["user_id"])
    if card.present?
      Payjp.api_key = PAYJP_SECRET_KEY
      customer = Payjp::Customer.retrieve(card["customer_id"])
      @card = customer.cards.retrieve(customer["default_card"])
      @last2_year = @card["exp_year"] % 100
    end
  end

  def new
  end

  def create
    Payjp.api_key = PAYJP_SECRET_KEY
    customer = Payjp::Customer.create(
      description: 'test'
      )
    @card = customer.cards.create(
      card: params["payjpToken"],
      default: true
      )
    Card.create(user_id: params["user_id"], customer_id: customer["id"])

    redirect_to  user_cards_path
  end

  def destroy
    card = Card.find_by(user_id: params["user_id"])
    # if tweet.user_id == current_user.id
    card.destroy
    redirect_to  user_cards_path
  end
end
