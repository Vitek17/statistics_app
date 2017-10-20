# == Schema Information
#
# Table name: stats
#
#  id         :integer          not null, primary key
#  id_m       :integer
#  id_e       :integer
#  id_u       :integer
#  date_log   :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Stat < ActiveRecord::Base
 	belongs_to :user, foreign_key: "id_u"
 	belongs_to :email, foreign_key: "id_e"


 	def self.getAnswersStatistic(email, date)
 		Stat.joins(:user)
 		.select("users.FIO")
 		.where('stats.id_e = ? and DATE(stats.date_log) = ?', email, date)
 		.group("users.FIO").count()
 		.map{|x| x}
 	end
end

