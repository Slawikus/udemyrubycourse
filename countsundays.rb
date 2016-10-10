require 'date'

start_date = Time.local(1900)
end_date = Time.local(2050, 12, 31)
sunday_counter = 0

# while end_date >= start_date
#   if  end_date.strftime("%A") == "Friday" && end_date.strftime("%d") == "13"
#     sunday_counter += 1
#   end
#   end_date -=  86400
# end

while end_date >= start_date
  current_year = end_date.strftime("%Y")
  if  end_date.strftime("%A") == "Friday" && end_date.strftime("%d") == "13"
    sunday_counter += 1
  end
  end_date -=  86400
  if end_date.strftime("%Y") != current_year
    p "#{current_year} + #{sunday_counter}" if sunday_counter > 2
    sunday_counter = 0
  end
end
