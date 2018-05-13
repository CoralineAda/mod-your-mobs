class Reaction < ApplicationRecord
  validates_presence_of :name
  has_and_belongs_to_many :monsters
end
