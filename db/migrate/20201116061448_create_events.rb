class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :title
      t.text :description
      t.integer :positions
      t.integer :dates, array: true
      t.boolean :ongoing
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
