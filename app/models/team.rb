class Team < ApplicationRecord
  has_many :players
  attr_reader :name

end