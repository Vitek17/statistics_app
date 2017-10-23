# == Schema Information
#
# Table name: mails_answers_logs
#
#  id         :integer          not null, primary key
#  id_e       :integer
#  id_u       :integer
#  date_log   :datetime
#  created_at :datetime
#  updated_at :datetime
#

class MailsAnswersLog < ActiveRecord::Base
 	belongs_to :user, foreign_key: "id_u"
 	belongs_to :email, foreign_key: "id_e"
end
