class Email < ActiveRecord::Base
 	has_many :stats, foreign_key: "ID_E"
end
