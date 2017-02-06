class CampaignFollowupsController < ApplicationController
  def index
    @campaign = Campaign.find params[:campaign_id]
    @campaign_followups = @campaign.campaign_followups
  end

  def new

  end

  def create
    MailerWorker.perform_async(params[:campaign_id])
    redirect_to '/'
  end
end
