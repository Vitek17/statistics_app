class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :ID_E
      t.string :EMAIL

      t.timestamps
    end
  end
end
