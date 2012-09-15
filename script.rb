
Viewpoint::EWS::EWS.endpoint = 'https://[domain]/ews/exchange.asmx'
Viewpoint::EWS::EWS.set_auth 'username', 'pasword'

%w(rooms to look up).each do |room|
  date = DateTime.now - 1
  puts "Looking at #{room} for #{date}"
  cal = Viewpoint::EWS::CalendarFolder.get_folder :calendar, room + '@example.com'
  puts "*" * 80
  puts cal.inspect
  puts "*" * 80
  puts cal.items_since(date).inspect
  puts "*" * 80

  puts "Done..."
  puts ''
end

