class StoresController < ApplicationController
  include StoresConcern
  def index
    @products = Product.load_product_for_home_page
                       .paginate(page: params[:page], per_page: Settings.page)
    @category_parents = Category.top_level
    load_product_for_cate
  end

  def detail
    @product = Product.find_by(id: params[:id])
    @products = Product.load_product_by_cate(@product.category_id)
  end
end
