class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :hero
      t.string :location
      t.references :dog, foreign_key: true

      t.timestamps
    end
  end
end
