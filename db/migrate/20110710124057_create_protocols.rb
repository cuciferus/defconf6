class CreateProtocols < ActiveRecord::Migration
  def change
    create_table :protocols do |t|
      t.date :data_inceperii
      t.string :centru
      t.string :tip
      t.references :pacient

      t.timestamps
    end
    add_index :protocols, :pacient_id
  end
end
