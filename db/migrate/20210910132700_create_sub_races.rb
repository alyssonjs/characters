class CreateSubRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_races do |t|
      t.string :name
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
