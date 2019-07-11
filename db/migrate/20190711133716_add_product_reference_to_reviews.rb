class AddProductReferenceToReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :product_id
    add_reference :reviews, :product, index: true, foreign_key: true
  end
end
