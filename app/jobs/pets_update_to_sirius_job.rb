class PetsUpdateToSiriusJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Helloooo!!!"
  end
end
