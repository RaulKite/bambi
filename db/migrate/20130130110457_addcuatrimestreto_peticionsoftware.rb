class AddcuatrimestretoPeticionsoftware < ActiveRecord::Migration
  def self.up
    add_column :peticionsoftwares, :cuatrimestre, :string
    add_column :peticionsoftwares, :anoanterior, :boolean
  end

  def down
    remove_column :peticionsoftwares, :cuatrimestre
    remove_column :peticionsoftwares, :anoanterior
  end
end
