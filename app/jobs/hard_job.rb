class HardJob < ActiveJob::Base
  queue_as :default

  def perform(weapon_id)
    puts "Started"
    puts "Weapon ID #{weapon_id}"
    puts "all is ok"
    sleep(10)
    puts "Finished"
  end
end
