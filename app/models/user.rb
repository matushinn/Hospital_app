class User < ApplicationRecord
  validates :name, {presence: true}
  validates :user_id, {presence: true, uniqueness: true}
  validates :birthday, {presence: true}
  validates :rese_date, {presence: true}


end
