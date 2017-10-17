class User < ActiveRecord::Base
 	has_many :stats, foreign_key: "ID_U"
end
