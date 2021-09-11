class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :total_hp
      t.float :experience
      t.references :race, null: false, foreign_key: true
      t.references :sub_race, null: false, foreign_key: true
      t.references :class_job, null: false, foreign_key: true
      t.references :sub_class_job, null: false, foreign_key: true
      t.references :background, null: false, foreign_key: true

      t.timestamps
    end
  end
end
