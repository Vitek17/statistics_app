class Stat < ActiveRecord::Base
 	belongs_to :user, foreign_key: "id_u"
 	belongs_to :email, foreign_key: "id_e"
 	def self.getStat(email, date)
 		Stat.joins(:user).select("users.FIO")
 		.where('stats.id_e = ? and DATE(stats.date_log) = ?', email, date)
 		.group("users.FIO").count()   
 	end
end

