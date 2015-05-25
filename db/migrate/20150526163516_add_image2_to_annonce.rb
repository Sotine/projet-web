class AddImage2ToAnnonce < ActiveRecord::Migration
  def change
    add_column :annonces, :image2, :string
  end
end
