class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :status, default: "Pending"

      t.timestamps
    end
  end
end
