# == Schema Information
#
# Table name: statistics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Statistics

  def self.getAnswersStatistics(email, date)
    MailsAnswersLog.joins(:user)
    .select("users.FIO")
    .where("mails_answers_logs.id_e = ? and date_trunc('day', mails_answers_logs.date_log) = '2017-10-23' ", email)
    .group("users.FIO").count()
    .map{|x| x}
  end

  def self.getMovesStatistics(email, date)
  	MoveLog.joins(:user)
    .select("users.FIO")
    .where("mails_move_log.id_e = ? and date_trunc('day', mails_move_log.date_log) = '2017-10-23' ", email)
    .group("users.FIO").count()
    .map{|x| x}
  end
end
