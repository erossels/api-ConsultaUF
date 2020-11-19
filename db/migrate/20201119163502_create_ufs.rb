class CreateUfs < ActiveRecord::Migration[6.0]
  def change
    create_table :ufs do |t|
      t.date :date_Uf
      t.float :value_Uf

      t.timestamps
    end
  end
end
