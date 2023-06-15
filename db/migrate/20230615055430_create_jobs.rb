class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :description
      t.string :company_name
      t.string :job_requirement
      t.integer :salary
      t.string :job_location
      t.time :working_hour
      t.date :last_date
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
