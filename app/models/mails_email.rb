class MailsEmail < ActiveRecord::Base
	self.primary_key = "ID_E"
	has_many :mails_answers_logs, foreign_key: "ID_E"
end
