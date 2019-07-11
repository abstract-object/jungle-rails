class AddUserReferenceToReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :user_id
    add_reference :reviews, :user, index: true, foreign_key: true
  end
end
