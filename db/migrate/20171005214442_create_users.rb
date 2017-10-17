class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :ID_U
      t.string :FIO

      t.timestamps
    end
  end
end
