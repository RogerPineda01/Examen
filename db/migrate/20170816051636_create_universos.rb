class CreateUniversos < ActiveRecord::Migration[5.1]
  def change
    create_table :universos do |t|
      t.string :Costelacion
      t.string :Distancia

      t.timestamps
    end
  end
end
