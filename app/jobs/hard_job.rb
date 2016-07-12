class HardJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts "Started"
    puts "Weapon ID"
    puts "all is ok"
    sleep(10)
    puts "Finished"
  end
end
