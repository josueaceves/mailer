class Contact < ActiveRecord::Base
  belongs_to :campaign



  def self.import(file, campaign_id)
    CSV.foreach(file.path, headers: true) do |row|
      contact_hash = row.to_hash
      if !contact_hash["E-mail Address"].blank? && !contact_hash["Job Title"].blank? && !contact_hash["Company"].blank? #&& !Contact.find_by_email(contact_hash["E-mail Address"])
        unless contact_include?(contact_hash["Company"], contact_hash["Job Title"])
          Contact.create(first_name: contact_hash["First Name"], last_name: contact_hash["Last Name"], email: contact_hash["E-mail Address"], company: contact_hash["Company"], job_title: contact_hash["Job Title"], campaign_id: campaign_id)
        end
      end
    end
   end

   def self.contact_include?(company, job_title)
     filter = ["seo","digital marketing","digital", "marketing","ppc","social media","dbc","developer","blogger","dev bootcamp", "software engineer", "freelance","web design","designer","graphic designer"]
     filter.each do |f|
       if company.downcase.include?(f) || job_title.downcase.include?(f)
         return true
       end
     end
     return false
   end

end

# Contact.all.each do |c|
#   if c.job_title.downcase.include?("seo") ||c.company.downcase.include?("digital maketing")
#     puts c.job_title
#     puts c.company
#   end
# end
