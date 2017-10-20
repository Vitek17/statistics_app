class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_u
      t.string :fio

      t.timestamps
    end
  end
end
