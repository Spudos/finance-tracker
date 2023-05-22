class AddName < ActiveRecord::Migration[6.1]
  def change
add_column :users, :first_name, :string
add_column :Users, :last_name, :string
  end
end
