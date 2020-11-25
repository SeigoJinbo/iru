class AddStatusToMembership < ActiveRecord::Migration[6.0]
  def change
    add_column :memberships, :status, :string, default: 'Pending'
  end
end
