class CreateAstronomia < ActiveRecord::Migration[5.1]
  def change
    create_table :astronomia do |t|
      t.string :Galaxia
      t.string :Planeta
      t.string :Estrella
      t.string :Luna

      t.timestamps
    end
  end
end
