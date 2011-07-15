class CreateHemoLunars < ActiveRecord::Migration
  def change
    create_table :hemo_lunars do |t|
      t.date :data
      t.float :hemoglobina
      t.float :hematocrit
      t.float :hematii
      t.float :leucocite
      t.float :trombocite
      t.float :uree
      t.float :creatinina
      t.float :sodiu
      t.float :potasiu
      t.float :tgo
      t.float :tgp
      t.float :glicemie
      t.float :calciu
      t.float :fosfor
      t.float :inr
      t.references :pacient

      t.timestamps
    end
    add_index :hemo_lunars, :pacient_id
  end
end
