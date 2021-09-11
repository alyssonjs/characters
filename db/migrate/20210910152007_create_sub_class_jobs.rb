class CreateSubClassJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_class_jobs do |t|
      t.string :name
      t.references :class_job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
