class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :hero
      t.string :location
      t.string :quote

      t.timestamps
    end
  end
end
