class CreateCursoacademicos < ActiveRecord::Migration
  def change
    create_table :cursoacademicos do |t|
      t.string :name

      t.timestamps
    end
  end
end
