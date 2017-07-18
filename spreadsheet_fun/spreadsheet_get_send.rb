
require "gmail"
require "mail"
require "google_drive"



session = GoogleDrive::Session.from_service_account_key("Spreadsheet-6118fffb53e0.json")
spreadsheet = session.spreadsheet_by_title("Test 1")
worksheet = spreadsheet.worksheets.first

h = {}


worksheet.rows.each do |row|
	h[row[0]] = row[1]
end



puts h

	Gmail.connect!("aconcou", "Cocacola/1") do |gmail|
		h.each do |name, emailtown|
			if emailtown != ""
				email = gmail.compose do
  					to emailtown
  					subject "Having fun in NUMA!"
  					body "THP rules. #{name} too ! grace a ton #{emailtown}"
  				end
  				email.deliver! 
  			end
		end
	end

	










# puts "done"