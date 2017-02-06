class CampaignFollowupsController < ApplicationController
  def index
    @campaign = Campaign.find params[:campaign_id]
    @campaign_followups = @campaign.campaign_followups
  end

  def new

  end

  def create
    puts "made it here"
    contact = Contact.create(email: "josueaceves.ja@gmail.com", first_name: "josh")
    ContactMailer.first_touch(contact).deliver_now
    redirect_to '/'
  end
end
