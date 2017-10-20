namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    MailsAnswersLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MailsAnswersLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    
    

    User.create!(id_u: 1, fio: "Никулин")
    User.create!(id_u: 2, fio: "Моргунов")
    User.create!(id_u: 3, fio: "Вицин")
    User.create!(id_u: 4, fio: "Миронов")
    User.create!(id_u: 5, fio: "Высоцкий")
    User.create!(id_u: 6, fio: "Леонов")

    MailsEmail.create!(id_e: 65, email: "support@ya.ru")
    MailsEmail.create!(id_e: 53, email: "telepay@ya.ru")
    MailsEmail.create!(id_e: 66, email: "passport@ya.ru")
    MailsEmail.create!(id_e: 44, email: "financial@ya.ru")
    MailsEmail.create!(id_e: 21, email: "arbitrage@ya.ru")



    20.times do |n|
      MailsAnswersLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now + (n%3+1)*86400)
    end

    90.times do |n|
      MailsAnswersLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now + (n%3+1)*86400)
    end


    70.times do |n|
      MailsAnswersLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now + (n%3+1)*86400)
    end


    10.times do |n|
      MailsAnswersLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now + (n%3+1)*86400)
    end


    60.times do |n|
      MailsAnswersLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now + (n%3+1)*86400)
    end





    20.times do |n|
      MailsAnswersLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now - (n%3+1)*86400)
    end

    90.times do |n|
      MailsAnswersLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now - (n%3+1)*86400)
    end


    70.times do |n|
      MailsAnswersLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now - (n%3+1)*86400)
    end


    10.times do |n|
      MailsAnswersLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now - (n%3+1)*86400)
    end


    60.times do |n|
      MailsAnswersLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now - (n%3+1)*86400)
    end

  end
end