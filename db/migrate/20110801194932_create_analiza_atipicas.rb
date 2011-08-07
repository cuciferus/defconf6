class CreateAnalizaAtipicas < ActiveRecord::Migration
  def change
    create_table :analiza_atipicas do |t|
      t.string :nume
      t.float :valoare
      t.string :unitate_masura
      t.string :sablon_type
      t.integer :sablon_id

      t.timestamps
    end
  end
end
