class CreateMailsAnswersLogs < ActiveRecord::Migration
  def change
    create_table :mails_answers_logs do |t|
      t.integer :id_e
      t.integer :id_u
      t.datetime :date_log

      t.timestamps
    end
  end
end
