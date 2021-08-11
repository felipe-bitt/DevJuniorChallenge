class Pet < ApplicationRecord
  validates :name, presence: true
  belongs_to :user

  after_create :add_two_pets


  def add_two_pets
    puts "Bora criar mais dois pet fanfarrao?"
  end
end
