class Patient
  attr_accessor :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def self.all
    @@all
  end

  def doctors
    doctors_array = [ ]
    Appointment.all.each do |appointment|
      if appointment.patient == self
        doctors_array << appointment.doctor
      end
    end
    doctors_array
  end

end
