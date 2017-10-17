class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :id_m
      t.integer :id_e
      t.integer :id_u
      t.datetime :date_log

      t.timestamps
    end
  end
end
