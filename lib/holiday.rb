require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  activities = []
  holiday_hash.each do |seasons, holiday|
    if seasons == :summer
      holiday.each do |season, activity|
        activities << activity
      end
    end
  end
  activities[0][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |seasons, holiday|
    if seasons == :winter
      holiday.each do |season, activity|
        activity << supply
      end
      puts holiday_hash
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |seasons, holiday|
  if seasons == :spring
      holiday.each do |season, activity|
        activity << supply
      end
      puts holiday_hash
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holiday|
    if seasons == season
      holiday_hash[seasons].merge!({holiday_name => supply_array}) 
      end
    end
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  activities = []
  holiday_hash.each do |seasons, holiday|
    if seasons == :winter
      holiday.each do |season, activity|
        activities << activity
      end
    end
  end
  activities.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, holiday|
    puts "#{seasons.capitalize}:"
    holiday.each do |season, activity|
      capital = season.to_s.split("_")
      capital.each {|i| i.capitalize!}
      capital = capital.join(" ")
    puts "  #{capital}: #{activity.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  activities = []
  holiday_hash.each do |seasons, holiday|
      holiday.each do |season, activity|
        activity.each do |check|
          if check == "BBQ"
            activities << season
        end
      end
    end
  end
  activities
end







