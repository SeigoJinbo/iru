class CreateOrganizationComments < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_comments do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
