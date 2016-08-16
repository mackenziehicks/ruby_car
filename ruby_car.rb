my_cars = []

class Vehicle
  def initialize(year)
    @year = year
    @lights_on = false
    @signal = false
  end
  def lights_on=(x)
    @lights_on = x
  end
  def lights_on?
    @lights_on
  end
  def signal_right
    @signal = "right"
  end
  def signal_left
    @signal = "left"
  end
  def signal_off
    @signal = false
  end
  def signal_on?
    @signal
  end
  def year
    @year
  end
end
# my_vehicle = Vehicle.new

class Car < Vehicle
  def initialize(year)
    super(year)
    @wheels = 4
    @speed = 0
  end
  def wheels
    @wheels
  end
  def speed
    @speed
  end
end
# my_car = Car.new

class Tesla < Car
 def accelerate
   @speed = @speed +10
 end
 def brake
   @speed = @speed -7
 end
end
my_cars.push(my_tesla = Tesla.new(2016))
my_cars.push(my_tesla_two = Tesla.new(1805))

class Tata < Car
  def accelerate
    @speed = @speed +2
  end
  def brake
    @speed = @speed -1.25
  end
end
my_cars.push(my_tata = Tata.new(1904))
my_cars.push(my_tata_two = Tata.new(2017))

class Toyota < Car
  def accelerate
    @speed = @speed +7
  end
  def brake
    @speed = @speed -5
  end
end
my_cars.push(my_toyota = Toyota.new(1700))
my_cars.push(my_toyota_two = Toyota.new(2001))

#prints my cars by class
my_cars.each { |car| puts car.class.to_s + " " + car.year.to_s }
#sorting cars by year
my_cars.sort { |car_a, car_b| car_a.year.to_s <=> car_b.year.to_s }
#same as above now with a varible
  my_sorted_cars = my_cars.sort { |car_a, car_b| car_a.year.to_s <=> car_b.year.to_s }
#prints sorted cars by year
my_sorted_cars.each { |car| puts car.class.to_s + " " + car.year.to_s }
# Tata 1990
# Tata 1997
# Toyota 2000
# Toyota 2004
# Tesla 2015
# Tesla 2016

#sorts my car by class
my_cars_years_alpha = my_cars.sort do |car_a, car_b| [car_a.class.to_s, car_a.year.to_s] <=> [car_b.class.to_s, car_b.year.to_s]
end

my_cars_years_alpha.each { |car| puts car.class.to_s + " " + car.year.to_s }

cars_years_alpha = my_cars_years.sort { |car_a, car_b| car_a.class.to_s <=> car_b.class.to_s }

cars_years_alpha.each { |car| puts car.class.to_s + " " + car.year.to_s }

def compare_car(car_a, car_b)
  if car_a.class == car_b.class
    if car_a.year == car_b.year
      0
    elsif car_a.year < car_b.year
      -1
    else
      1
    end
  elsif car_a.class.to_s < car_b.class.to_s
    -1
  else
    1
  end
end

cars.sort { |car1, car2| compare_car(car1, car2)}
