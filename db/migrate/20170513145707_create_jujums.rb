class CreateJujums < ActiveRecord::Migration
  def change
    create_table :jujums do |t|
      t.string :name
      t.string :theme
      t.string :introduce
      t.string :image
      t.timestamps null: false
    end
  end
end
