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
	self.primary_key = "id_e"
	has_many :mails_answers_logs, foreign_key: "id_e"
end
