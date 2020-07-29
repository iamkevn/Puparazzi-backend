class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :message
  belongs_to :user
  belongs_to :photographer

end
