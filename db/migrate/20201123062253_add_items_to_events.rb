class AddItemsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :item, :string
  end
end
