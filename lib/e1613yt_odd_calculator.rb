require "e1613yt_odd_calculator/version"
require 'date'

module E1613ytOddCalculator

  # calc BMI
  def self.BMI(height, weight)
    puts ('height: ' + height.to_s + ' m')
    puts ('weight: ' + weight.to_s + ' kg')
    return (weight.to_f / (height.to_f * height.to_f)).to_f
  end

  # calc live dates
  def self.LiveDates(birthYear, birthMonth, birthDay)
    birthDate = Date.new(birthYear, birthMonth, birthDay)
    return (Date.today - birthDate).to_i
  end

  # calc current age
  def self.CurrentAge(birthYear, birthMonth, birthDay)
    today = Date.today
    baseAge = today.year - birthYear
    if today.month < birthMonth then
        baseAge = baseAge - 1
    elsif today.month == birthMonth && today.day < birthDay then
        baseAge = baseAge - 1
    end
    return baseAge
  end

end
