class CreateMoveLogs < ActiveRecord::Migration
  def change
    create_table :mails_move_log do |t|
      t.integer :id_e
      t.integer :id_u
      t.datetime :date_log

      t.timestamps
    end
  end
end
