require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |holiday, supplies_array|
supplies_array << supply
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season,holidays|
  puts "#{season.capitalize}:"
  holidays.each do |holiday, items|
    puts "  #{holiday.to_s.split("_").collect{|h| h.capitalize}.join(" ")}: #{items.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
 
fun_holidays = []
holiday_hash.map do |season, holidays|
  holidays.collect do |holiday, supplys|
    if supplys.include?("BBQ")
      fun_holidays << holiday
end
end
end
fun_holidays
end






