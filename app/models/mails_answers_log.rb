class MailsAnswersLog < ActiveRecord::Base
 	belongs_to :user, foreign_key: "id_u"
 	belongs_to :email, foreign_key: "id_e"
end
