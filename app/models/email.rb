# == Schema Information
#
# Table name: emails
#
#  id         :integer          not null
#  ID_E       :integer          primary key
#  EMAIL      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Email < ActiveRecord::Base
	self.primary_key = "ID_E"
	has_many :stats, foreign_key: "ID_E"
end
