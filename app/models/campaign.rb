class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :contacts
  has_many :campaign_followups
end
