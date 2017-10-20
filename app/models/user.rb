class User < ActiveRecord::Base
  self.primary_key = "ID_U"
  has_many :mails_answers_logs, foreign_key: "ID_U"
end
