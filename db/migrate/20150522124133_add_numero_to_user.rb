class AddNumeroToUser < ActiveRecord::Migration
  def change
    add_column :users, :numero, :integer
  end
end
