class AddCoordinatesToRockets < ActiveRecord::Migration[6.1]
  def change
    add_column :rockets, :latitude, :float
    add_column :rockets, :longitude, :float
  end
end
