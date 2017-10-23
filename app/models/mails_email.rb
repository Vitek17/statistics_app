# == Schema Information
#
# Table name: mails_emails
#
#  id         :integer          not null
#  id_e       :integer
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class MailsEmail < ActiveRecord::Base
	self.primary_key = "ID_E"
	has_many :mails_answers_logs, foreign_key: "ID_E"
end
