class AddTargetToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :target, :integer
    add_column :events, :raised, :integer
  end
end
