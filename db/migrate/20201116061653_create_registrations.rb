class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.string :status

      t.timestamps
    end
  end
end
