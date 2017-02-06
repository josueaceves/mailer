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
    100.times do
      ContactMailer.first_touch(contact).deliver_now
    end
    redirect_to '/'
  end
end
