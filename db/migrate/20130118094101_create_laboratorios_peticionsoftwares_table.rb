class CreateLaboratoriosPeticionsoftwaresTable < ActiveRecord::Migration
  def self.up
    create_table :laboratorios_peticionsoftwares, :id => false do |t|
      t.references :laboratorio
      t.references :peticionsoftware
    end
    
    add_index :laboratorios_peticionsoftwares, [:laboratorio_id, :peticionsoftware_id], :name => 'indice'
  end

  def self.down
    drop_table :laboratorios_peticionsoftwarelaboratorios
  end
end
