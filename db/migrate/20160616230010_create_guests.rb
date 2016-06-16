class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.boolean :visit
      t.string :gift
      t.timestamps null: false
    end
  end
end
