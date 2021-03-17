class AddClientIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :client_id, :integer
  end
end
