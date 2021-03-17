class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :client
    has_one :cuts, dependent: :destroy
    
end
