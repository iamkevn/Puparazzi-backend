class User < ApplicationRecord
    has_many :appointments
    has_many :photographers, through: :appointments
end
