class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def appointment_time
    appointment_datetime.strftime("%B %d, %Y") + " at " + appointment_datetime.strftime('%H:%M:%S')
  end
end
