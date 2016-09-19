# МЕТОДЫ
# => подгружаем файл в irb
# load './car.rb'
# => команды для управления: создаем объект класса
# car = Car.new 
# => команды для управления: id объекта
# car.object_id
# => вызов методов
# car.start_engine
# car.beep
# car.stop

class Car
  # команды для указания методов возращающий и передающих значение  attr_reader :speed attr_writer :speed
  # или :engine_volume
  # и тогда   def set_speed(speed)   def engine_volume   def current_speed не нужны - это упрощает написание страдартных вещей, для того чтобы упростить запись attr_writer,attr_reader можно записать так attr_accessor :speed если мы будем использовать методы в других методах нужно писать при присвоении не @speed =   а, self.speed = 

  # для указания значения параметров по-умолчанию initialize(speed = 0, engine_volume =2.0)
  # для указания значения 1го параметра по-умолчанию initialize(speed = 0, engine_volume), если передать два значения - первое 0 переопределиться
  # у разных объектов могут быть разные параметры, чтобы была возможность управлять объектами и параметрами, для этого можно использовать в конструкторе initialize на initialize(speed, engine_volume) при помощи аргументов
  # def initialize
  # => теперь команды для управления: создаем объект класса
  # car = Car.new(10,2.0) 
  # def initialize(speed, engine_volume)
  def initialize(speed = 0, engine_volume = 2.0)
    @speed = speed
    @engine_volume = engine_volume
    # например при создании объекта он движется и сигналит и показывает скорость
    #@speed = 1
    beep
    current_speed       
  end

  def start_engine
    push 'Wrrr!'
  end 

  def beep
    puts 'beep beep'
  end

  def stop
  #  puts 'stop'
    @speed = 0
  end

  # данные
  def go
  # скорость это атрибут, инстранс переменная - @, название и значение
  # инстанс переменная нужна только, если она должна использоваться в нескольких методах, не только в рамках одного метода
  # она инициализируется
   @speed = 50
  #  speed = 40

  #  puts "instance speed: #{@speed}, local speed: #{speed}"
  end
  # метод выводящий переменную, имеет к ней доступ
  def current_speed
   # выдаст ошибку т.к. speed локальная
   # puts "Current speed: #{@speed}, local speed: #{speed}"
   puts "Current speed: #{@speed}"
  end

  def engine_volume
    @engine_volume
  end

# при создании объекта необходимо инициализировать объекты - объявлить инстанс переменные и их значение. через initialize в начале

# методы для изменения переменных, в аргумент передается скорость и она будет устанавливаться
  def set_speed(speed)
  #   def speed=(speed) 
  # можем использовать car.speed = 50 и присвоить новое значение
    @speed = speed
  end

end

# оптимальный вариант в файле car2.rb