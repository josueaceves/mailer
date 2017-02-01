class CampaignFollowupsController < ApplicationController
  def index
    @campaign = Campaign.find params[:campaign_id]
    @campaign_followups = @campaign.campaign_followups
  end
end
