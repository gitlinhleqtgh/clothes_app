class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :order_items, dependent: :destroy
  has_many_attached :images

  after_commit :add_default_image, on: [:create, :update]

  enum size: {L: 0, S: 1, M: 2}

  scope :load_product_for_home_page,
        ->{select(:id, :name, :price, :images, :size).order(name: :asc)}
  scope :load_prodct_by_price,
        ->{select(:id, :name, :price, :images, :size).order(price: :asc)}
  scope :load_product_by_cate,
        ->(cate_id){select(:id, :name, :price, :images, :size).where(category_id: cate_id)}

  def display_image
    images[0].variant resize_to_limit: [Settings.image.default,
      Settings.image.default]
  end

  private

  def add_default_image
    return if images.attached?

    images.attach(io:
      File.open(Rails.root.join("app", "assets", "images", "shop_11.jpg")),
      filename: "shop_11.jpg",
      content_type: "image/jpg")
  end
end
