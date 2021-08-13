class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  has_many :pets
  accepts_nested_attributes_for :pets

  after_create :add_two_pets

  private
  
  def add_two_pets
    pets.create(name: "pindola")
    pets.create(name: "olar")
  end

end
