class MailerWorker
  include Sidekiq::Worker

  def perform(campaign_id)
    campaign = Campaign.find(campaign_id)
    campaign_followup = CampaignFollowup.create(campaign_id: campaign_id)
    campaign.contacts.each do |c|
      campaign_followup.email_followups.create(contact_id: c.id)
      ContactMailer.first_touch(c).deliver_now
    end
  end
end
