class AddTelefonToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :telefon, :string
  end
end
