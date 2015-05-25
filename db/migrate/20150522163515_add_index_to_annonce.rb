class AddIndexToAnnonce < ActiveRecord::Migration
  def change
    add_index :annonces, :user_id
  end
end
