class AddNomToUser < ActiveRecord::Migration
  def change
    add_column :users, :nom, :string
  end
end
