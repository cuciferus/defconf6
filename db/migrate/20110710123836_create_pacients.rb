class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :nume
      t.string :prenume
      t.integer :cnp
      t.date :data_preluarii

      t.timestamps
    end
  end
end
