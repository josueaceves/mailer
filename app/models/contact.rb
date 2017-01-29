class Contact < ActiveRecord::Base
  def self.import(file)
      data = IO::read(file.path).scrub("")
      CSV.foreach(file.path, headers: true) do |row|
        contact_hash = row.to_hash
        unless Contact.find_by_email contact_hash["E-mail Address"]
          Contact.create(first_name: contact_hash["First Name"], last_name: contact_hash["Last Name"], email: contact_hash["E-mail Address"], company: contact_hash["Company"], job_title: contact_hash["Job Title"])
        end
      end
   end
end
