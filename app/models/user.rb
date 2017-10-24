# == Schema Information
#
# Table name: users
#
#  id         :integer          not null
#  id_u       :integer
#  fio        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  self.primary_key = "id_u"
  has_many :mails_answers_logs, foreign_key: "id_u"
end
