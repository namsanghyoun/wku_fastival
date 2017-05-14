class CreateMerongs < ActiveRecord::Migration
  def change
    create_table :merongs do |t|
      t.integer :jujum_id
      t.string :getip
      t.timestamps null: false
    end
  end
end
