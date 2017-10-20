# == Schema Information
#
# Table name: users
#
#  id         :integer          not null
#  ID_U       :integer          primary key
#  FIO        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
	self.primary_key = "ID_U"
 	has_many :stats, foreign_key: "ID_U"
end
