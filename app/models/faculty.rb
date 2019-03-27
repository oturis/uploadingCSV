class Faculty < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      faculty_hash = Faculty.new
      faculty_hash.last_name = row[0]
      faculty_hash.first_name = row[1]
      faculty_hash.title = row[2]
      faculty_hash.office_number = row[3]
      faculty_hash.email_address = row[4]
      faculty_hash.phone_number = row[5]
      faculty_hash.save
    end
  end
end
