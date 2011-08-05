class CreateJackrabbits < ActiveRecord::Migration
  def change
    create_table :jackrabbits do |t|
      t.string :name
      t.integer :weight
      t.integer :height
      t.string :email

      t.timestamps
    end
  end
end
