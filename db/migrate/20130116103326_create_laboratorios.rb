class CreateLaboratorios < ActiveRecord::Migration
  def change
    create_table :laboratorios do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
