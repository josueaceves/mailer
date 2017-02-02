class CampaignFollowupsController < ApplicationController
  def index
    @campaign = Campaign.find params[:campaign_id]
    @campaign_followups = @campaign.campaign_followups
  end

  def new

  end

  def create
    puts "made it here"
    redirect_to '/'
  end
end
