class MoveLog < ActiveRecord::Base
	self.table_name = "mails_move_log"
	belongs_to :user, foreign_key: "id_u"
 	belongs_to :email, foreign_key: "id_e"
end
