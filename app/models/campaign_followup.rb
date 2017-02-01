class CampaignFollowup < ActiveRecord::Base
  belongs_to :campaign
  has_many :email_followups
end
