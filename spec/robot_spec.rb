require './lib/robot.rb'

describe 'robot' do
  let(:robot) { Robot.new }

  describe 'robot setup' do
    it 'creates a new robot' do
      expect(robot).not_to eq nil
    end

    it 'knows about coordinates' do
      expect(robot.position_x).to eql(0)
      expect(robot.position_y).to eql(0)
    end

    it 'knows about facing' do
      expect(robot.facing).to eql('N')
    end
  end

  decribe 'move' do
    it 'moves' do
      expect(robot.move).to
    end
  end

end
