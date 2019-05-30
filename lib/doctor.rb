#patient - appointment - doctor 
class Doctor 
  attr_accessor :name, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end  
  
  def self.all
    @@all
  end  
  
  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
    appt
  end  
  
  def appointments
    Appointment.all.select {|appt| appt.doctor ==self}
  end  
    
  def patients 
    self.appointments.collect {|appt| appt.patient}
  end  
  
end 