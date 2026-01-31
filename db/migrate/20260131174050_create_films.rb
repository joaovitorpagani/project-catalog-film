class CreateFilms < ActiveRecord::Migration[8.0]
  def change
    create_table :films do |t|
      t.string :name
      t.text :synopsis
      t.date :realese_date
      t.decimal :rating
      t.integer :duration

      t.timestamps
    end
  end
end
