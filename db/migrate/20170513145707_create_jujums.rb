class CreateJujums < ActiveRecord::Migration
  def change
    create_table :jujums do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
