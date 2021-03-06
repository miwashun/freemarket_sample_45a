class ItemsController < ApplicationController
  before_action :before_login, except:[:index, :show]
  before_action :set_item, only:[:edit, :update, :destroy, :show, :purchase, :done]
  before_action :set_user, only:[:purchase, :done]
  protect_from_forgery except: :done

  def index
    @ladies_items = Item.includes(:images).where(category_id: 1).order(created_at: :desc).limit(4)
    @mens_items = Item.includes(:images).where(category_id: 2).order(created_at: :desc).limit(4)
    @baby_kids_items = Item.includes(:images).where(category_id: 3).order(created_at: :desc).limit(4)
    @cosmetics_perfume_beauty_items = Item.includes(:images).where(category_id: 4).order(created_at: :desc).limit(4)
    @chanel_items = Item.includes(:images).where(brand_id: 2).order(created_at: :desc).limit(4)
    @louis_vuitton_items = Item.includes(:images).where(brand_id: 3).order(created_at: :desc).limit(4)
    @supreme_items = Item.includes(:images).where(brand_id: 4).order(created_at: :desc).limit(4)
    @nike_items = Item.includes(:images).where(brand_id: 5).order(created_at: :desc).limit(4)
  end

  def show
    @ladies_items = Item.includes(:images).where(category_id: 1).limit(4)
  end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def edit
    if current_user.id == @item.user_id
      @image = @item.images.includes(:image_url)
      @item.images.build
    else
      redirect_to root_path
    end
  end

  def destroy
    if @item.user_id == current_user.id
      @item.destroy
      redirect_to root_path, notice: "商品を削除しました"
    else
      redirect_to root_path
    end
  end

  def update
    if @item.user_id == current_user.id
      if @item.update(update_item_params)
        redirect_to user_path
      else
        render :edit
      end
    else
      redirect_to root_path
    end
  end

  def purchase
    card = Card.find_by(user_id: current_user.id)
    if card.present?
      Payjp.api_key = PAYJP_SECRET_KEY
      customer = Payjp::Customer.retrieve(card["customer_id"])
      @card = customer.cards.retrieve(customer["default_card"])
      @last2_year = @card["exp_year"] % 100
    end
  end

  def done
    card =Card.find_by(user_id: current_user.id)
    if card.present?
      Payjp.api_key = PAYJP_SECRET_KEY
      charge = Payjp::Charge.create(
        :amount => @item.price,
        :currency => 'jpy',
        :customer => card.customer_id
        )
      customer = Payjp::Customer.retrieve(card["customer_id"])
      @card = customer.cards.retrieve(customer["default_card"])
      @last2_year = @card["exp_year"] % 100

      @item.sold!
    else
      redirect_to purchase_item_path
    end
  end

  def search
    if params[:l_cat]
      @m_cat = Category.find(params[:l_cat]).children
    else
      @s_cat = Category.find(params[:m_cat]).children
    end
    respond_to do |format|
      format.html
      format.json
    end
  end

  def detail
    @item = Item.find(params[:id])
  end

  private
  def before_login
    redirect_to new_user_session_path unless user_signed_in?
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_user
    @user = User.find(current_user.id)
  end

  def item_params
    params.require(:item).permit(:name, :price, :detail, :category_id, :subcategory_id, :subsubcategory, :prefecture_id, :condition_id, :shipping_date_id, :burden_id, images_attributes: [:id, :image_url]).merge(user_id: current_user.id)
  end
  def update_item_params
    params.require(:item).permit(:name, :price, :detail, :category_id, :subcategory_id, :subsubcategory, :prefecture_id, :condition_id, :shipping_date_id, :burden_id, images_attributes: [:image_url, :created_at, :updated_at, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
