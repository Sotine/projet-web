class AddImag3ToAnnonce < ActiveRecord::Migration
  def change
    add_column :annonces, :image3, :string
  end
end
