month_date = {
  0 => 31,
  4 => 30,
  6 => 30,
  11=> 30,
  9 => 30
}

DATE_OF_FEB_AT_LEAP = 29
DATE_OF_FEB = 28

def leap_year? year
  return false  if year % 4 != 0
  return true   if year % 400 != 0 and year % 100 == 0
  return true
end

def date_of_feb year
  if leap_year? year then
    return DATE_OF_FEB_AT_LEAP
  end
  return DATE_OF_FEB
end

dates = []
start_1901 = 0

1900.upto(2000) do |year|
  if year == 1901 then
    start_1901 = dates.length
  end

  1.upto(12) do |month|
    end_of_month = 0
    if month == 2 then
      end_of_month = date_of_feb year
    else
      end_of_month = 31 unless end_of_month = month_date[month]
    end
    dates.concat((1..end_of_month).to_a)
  end
end

sum = 0
p start_1901
0.step(dates.size,7) do |n|
  sum += 1 if dates[n] == 1 and n >= start_1901
end
p sum
