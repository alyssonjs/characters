class AddPlayerToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :player, :string
  end
end
