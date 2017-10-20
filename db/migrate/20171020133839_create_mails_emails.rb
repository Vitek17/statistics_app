class CreateMailsEmails < ActiveRecord::Migration
  def change
    create_table :mails_emails do |t|
      t.integer :id_e
      t.string :email

      t.timestamps
    end
  end
end
