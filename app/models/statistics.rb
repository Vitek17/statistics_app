# == Schema Information
#
# Table name: statistics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Statistics < ActiveRecord::Base

  def self.getAnswersStatistics(email, date)
    MailsAnswersLog.joins(:user)
    .select("users.FIO")
    .where('mails_answers_logs.id_e = ? and mails_answers_logs.date_log LIKE ?', email, date)
    .group("users.FIO").count()
    .map{|x| x}
  end

  def self.getMovesStatistics(email, date)
  	MoveLog.joins(:user)
    .select("users.FIO")
    .where('mails_move_log.id_e = ? and mails_move_log.date_log LIKE ?', email, date)
    .group("users.FIO").count()
    .map{|x| x}
  end
end
