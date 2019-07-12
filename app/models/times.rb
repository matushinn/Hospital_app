class Time < ApplicationRecord
  validates :content, {presence: true}
  validates :check, {presence: true}

end
