class CreateClassJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :class_jobs do |t|
      t.string :name

      t.timestamps
    end
  end
end
