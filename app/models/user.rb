# Un User peut avoir plusieurs réservations et il peut avoir plusieurs events au travers des réservations
class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  has_many :created_event, foreign_key:'admin_id', class_name: 'User'
end
