class Condition < ApplicationRecord
  with_options presence: true do
    validates :nickname
    validates :point, inclusion: { in: (20..100) }
  end
end
