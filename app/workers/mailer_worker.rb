class MailerWorker
  include Sidekiq::Worker

  def perform(campaign_id)
    # Do something
    followup = CampaignFollowup.create(campaign_id: campaign_id)
    1000.times do
      contact = Contact.last
      ContactMailer.first_touch(contact).deliver_now
    end
  end
end
