class BookingEquipment < ApplicationRecord
  belongs_to :booking
  belongs_to :equipment
end
