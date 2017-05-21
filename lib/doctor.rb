class Doctor

  attr_accessor :name, :appointments


  def initialize(name)
    @name = name
    @appointments=[]
  end

  def add_appointment(appt)
    @appointments<<appt
    appt.doctor = self
  end

  def appointment
    @appointments
  end

  def patients
    self.appointments.collect {|appt| appt.patient}

  end




end
