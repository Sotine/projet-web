class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :titre
      t.text :description
      t.integer :prix
      t.string :image


      t.timestamps null: false
    end
  end
end
