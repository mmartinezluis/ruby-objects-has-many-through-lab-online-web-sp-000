
class Doctor
  attr_accessor :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, genre)
    Appointment.new(date, self, genre)
  end

  def patients
    appointments.collect {|this_doctor_appointment| this_doctor_appointment.patient}
  end

end
