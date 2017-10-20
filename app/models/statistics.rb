class Statistics < ActiveRecord::Base

  def self.getAnswersStatistic(email, date)
  	date += "%"
    MailsAnswersLog.joins(:user)
    .select("users.FIO")
    .where('mails_answers_logs.id_e = ? and DATE(mails_answers_logs.date_log) = ?', email, date)
    .group("users.FIO").count()
    .map{|x| x}
  end
end
