class Cut < ApplicationRecord
    belongs_to :client
    belongs_to :appointment
end
