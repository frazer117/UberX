class AddAddressToRockets < ActiveRecord::Migration[6.1]
  def change
    add_column :rockets, :address, :string
  end
end
