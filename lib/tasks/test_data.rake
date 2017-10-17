namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Stat.create!(id_m: 123, id_e: 65, id_u: 1, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 53, id_u: 2, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 66, id_u: 3, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 44, id_u: 4, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 21, id_u: 5, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 65, id_u: 6, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 65, id_u: 1, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 53, id_u: 2, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 66, id_u: 3, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 44, id_u: 4, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 21, id_u: 5, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 65, id_u: 6, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 65, id_u: 1, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 53, id_u: 2, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 66, id_u: 3, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 44, id_u: 4, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 21, id_u: 5, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 65, id_u: 6, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 65, id_u: 1, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 53, id_u: 2, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 66, id_u: 3, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 44, id_u: 4, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 21, id_u: 5, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 65, id_u: 6, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 65, id_u: 1, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 53, id_u: 2, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 66, id_u: 3, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 44, id_u: 4, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 21, id_u: 5, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 65, id_u: 6, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 65, id_u: 1, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 53, id_u: 2, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 66, id_u: 3, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 44, id_u: 4, date_log: Time.now)
    Stat.create!(id_m: 123, id_e: 21, id_u: 5, date_log: Time.now)
    Stat.create!(id_m: 122, id_e: 65, id_u: 6, date_log: Time.now)
    
    120.times do |n|
      Stat.create!(id_m: n+1, id_e: 65, id_u: n%6+1, date_log: Time.now + (n%7)*3600)
    end

    90.times do |n|
      Stat.create!(id_m: n+1, id_e: 53, id_u: n%6+1, date_log: Time.now - (n%17)*3600)
    end


    70.times do |n|
      Stat.create!(id_m: n+1, id_e: 66, id_u: n%6+1, date_log: Time.now - (n%17)*3600)
    end


    110.times do |n|
      Stat.create!(id_m: n+1, id_e: 44, id_u: n%6+1, date_log: Time.now - (n%17)*3600)
    end


    60.times do |n|
      Stat.create!(id_m: n+1, id_e: 21, id_u: n%6+1, date_log: Time.now - (n%17)*3600)
    end

    User.create!(ID_U: 1, FIO: "Никулин")
    User.create!(ID_U: 2, FIO: "Моргунов")
    User.create!(ID_U: 3, FIO: "Вицин")
    User.create!(ID_U: 4, FIO: "Миронов")
    User.create!(ID_U: 5, FIO: "Высоцкий")
    User.create!(ID_U: 6, FIO: "Леонов")

    Email.create!(ID_E: 65, EMAIL: "support@ya.ru")
    Email.create!(ID_E: 53, EMAIL: "telepay@ya.ru")
    Email.create!(ID_E: 66, EMAIL: "passport@ya.ru")
    Email.create!(ID_E: 44, EMAIL: "financial@ya.ru")
    Email.create!(ID_E: 21, EMAIL: "arbitrage@ya.ru")



 220.times do |n|
      Stat.create!(id_m: n+1, id_e: 65, id_u: n%6+1, date_log: Time.now + (n%26)*86400)
    end

    290.times do |n|
      Stat.create!(id_m: n+1, id_e: 53, id_u: n%6+1, date_log: Time.now + (n%26)*86400)
    end


    270.times do |n|
      Stat.create!(id_m: n+1, id_e: 66, id_u: n%6+1, date_log: Time.now + (n%26)*86400)
    end


    210.times do |n|
      Stat.create!(id_m: n+1, id_e: 44, id_u: n%6+1, date_log: Time.now + (n%26)*86400)
    end


    260.times do |n|
      Stat.create!(id_m: n+1, id_e: 21, id_u: n%6+1, date_log: Time.now + (n%26)*86400)
    end





220.times do |n|
      Stat.create!(id_m: n+1, id_e: 65, id_u: n%6+1, date_log: Time.now - (n%6)*86400)
    end

    290.times do |n|
      Stat.create!(id_m: n+1, id_e: 53, id_u: n%6+1, date_log: Time.now - (n%6)*86400)
    end


    270.times do |n|
      Stat.create!(id_m: n+1, id_e: 66, id_u: n%6+1, date_log: Time.now - (n%6)*86400)
    end


    210.times do |n|
      Stat.create!(id_m: n+1, id_e: 44, id_u: n%6+1, date_log: Time.now - (n%6)*86400)
    end


    260.times do |n|
      Stat.create!(id_m: n+1, id_e: 21, id_u: n%6+1, date_log: Time.now - (n%6)*86400)
    end

  end
end