class CreatePeticionsoftwares < ActiveRecord::Migration
  def change
    create_table :peticionsoftwares do |t|
      t.string :title
      t.references :user
      t.string :asignatura
      t.string :titulacion
      t.string :curso
      t.string :sistemaoperativo
      t.text :software
      t.string :dondeobtener
      t.date :fechacomienzo
      t.text :cometario
      t.datetime :fechayhora
      t.references :cursoacademico

      t.timestamps
    end
    add_index :peticionsoftwares, :user_id
    add_index :peticionsoftwares, :cursoacademico_id
  end
end
