class AddListasumToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :listasum, :string
  end

  def self.down
    remove_column :users, :listasum
  end
end
