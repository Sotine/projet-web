class AddPromotionToUser < ActiveRecord::Migration
  def change
    add_column :users, :promotion, :integer
  end
end
