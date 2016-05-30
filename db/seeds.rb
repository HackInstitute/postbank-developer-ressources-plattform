require 'csv'

f = CSV.read('db/seeds.csv')
f.each do |line|
  Certificate.create email: line[2], booking_id: line[3], certificate_link: "app/certificates/#{line[0]}.zip"
end
