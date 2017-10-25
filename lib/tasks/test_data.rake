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
    


    30.times do |n|
      MailsAnswersLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now)
    end

    20.times do |n|
      MailsAnswersLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now)
    end


    25.times do |n|
      MailsAnswersLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now)
    end


    27.times do |n|
      MailsAnswersLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now)
    end


    18.times do |n|
      MailsAnswersLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now)
    end
    



    159.times do |n|
      MailsAnswersLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end

    140.times do |n|
      MailsAnswersLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


    155.times do |n|
      MailsAnswersLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


    147.times do |n|
      MailsAnswersLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


    138.times do |n|
      MailsAnswersLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end



 130.times do |n|
      MailsAnswersLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end

    120.times do |n|
      MailsAnswersLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


    125.times do |n|
      MailsAnswersLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


    127.times do |n|
      MailsAnswersLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


    118.times do |n|
      MailsAnswersLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


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



   
    MoveLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MoveLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MoveLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MoveLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MoveLog.create!(id_e: 21, id_u: 5, date_log: Time.now)
    MoveLog.create!(id_e: 65, id_u: 6, date_log: Time.now)
    MoveLog.create!(id_e: 65, id_u: 1, date_log: Time.now)
    MoveLog.create!(id_e: 53, id_u: 2, date_log: Time.now)
    MoveLog.create!(id_e: 66, id_u: 3, date_log: Time.now)
    MoveLog.create!(id_e: 44, id_u: 4, date_log: Time.now)
    MoveLog.create!(id_e: 21, id_u: 5, date_log: Time.now)



     15.times do |n|
      MoveLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now)
    end

    30.times do |n|
      MoveLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now)
    end


    18.times do |n|
      MoveLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now)
    end


    21.times do |n|
      MoveLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now)
    end


    24.times do |n|
      MoveLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now)
    end




     115.times do |n|
      MoveLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end

    130.times do |n|
      MoveLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


    128.times do |n|
      MoveLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


    127.times do |n|
      MoveLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end


    124.times do |n|
      MoveLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now + (n%11)*86400)
    end





     145.times do |n|
      MoveLog.create!(id_e: 65, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end

    140.times do |n|
      MoveLog.create!(id_e: 53, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


    128.times do |n|
      MoveLog.create!(id_e: 66, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


    131.times do |n|
      MoveLog.create!(id_e: 44, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


    134.times do |n|
      MoveLog.create!(id_e: 21, id_u: n%6+1, date_log: Time.now - (n%19+1)*86400)
    end


  end
end