class Statistics < ActiveRecord::Base

  def self.getAnswersStatistic(email, date)
    MailsAnswersLog.joins(:user)
    .select("users.FIO")
    .where('mails_answers_logs.id_e = ? and mails_answers_logs.date_log LIKE ?', email, date)
    .group("users.FIO").count()
    .map{|x| x}
  end
end
