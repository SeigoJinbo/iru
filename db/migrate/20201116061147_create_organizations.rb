class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :email
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :establishment_year
      t.string :phone_number
      t.string :hp_url
      t.string :fb_url
      t.string :twitter_url
      t.string :insta_url

      t.timestamps
    end
  end
end
