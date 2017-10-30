# == Schema Information
#
# Table name: statistics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Statistics

  def self.getAnswers(email, date)
    MailsAnswersLog.joins(:user)
    .select("users.FIO")
    .where("mails_answers_logs.id_e = ? and DATE(mails_answers_logs.date_log) = ?", email, date)
    .group("users.FIO").count()
    .map{|x| x}
  end

  def self.getMoves(email, date)
  	MoveLog.joins(:user)
    .select("users.FIO")
    .where("mails_move_log.id_e = ? and DATE(mails_move_log.date_log) = ?", email, date)
    .group("users.FIO").count()
    .map{|x| x}
  end

  def self.getAnswersPeriod(email, date1, date2)
    MailsAnswersLog.joins(:user)
    .select("users.FIO")
    .where("mails_answers_logs.id_e = ? and mails_answers_logs.date_log between '2017-11-01 00:00:00'::timestamp and '2017-11-01 23:55:00'::timestamp", email)
    .group("users.FIO").count()
    .map{|x| x}
  end

  def self.getMovesPeriod(email, date1, date2)
    MoveLog.joins(:user)
    .select("users.FIO")
    .where("mails_move_log.id_e = ? and mails_move_log.date_log between ? and ?", email, date1, date2)
    .group("users.FIO").count()
    .map{|x| x}
  end
end
