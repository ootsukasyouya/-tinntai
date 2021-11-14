class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :route
      t.integer :time
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
