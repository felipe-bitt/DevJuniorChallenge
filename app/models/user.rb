class User < ApplicationRecord
  validates :name, :email, :password, presence: true
  has_many :pets
  accepts_nested_attributes_for :pets

  after_create :add_two_pets

  private
  
  def add_two_pets
    @pet = Pet.new(name: "pindola", user_id: self.id)
    @pet = Pet.new(name: "olar", user_id: self.id)
  end

end
