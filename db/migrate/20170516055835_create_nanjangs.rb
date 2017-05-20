class CreateNanjangs < ActiveRecord::Migration
  def change
    create_table :nanjangs do |t|
      t.string :name
      t.string :introduce
      t.string :color
      t.string :image
      t.timestamps null: false
    end
  end
end
