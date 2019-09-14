require './lib/robot.rb'

robot = Robot.new
File.open('command.txt').each do |line|
  line.downcase
  robot.command_digest(line)
end

# bin direstor
# fine with commnads inside
# load all commands and send to the Robot