module StoresConcern
  def load_product_for_cate
    return if params[:cate_id].blank?

    @products = Product.load_product_by_cate(params[:cate_id])
                       .paginate(page: params[:page], per_page: Settings.page)
    return unless @products.empty?

    flash.now[:danger] = t("store.no_item")
  end
end
