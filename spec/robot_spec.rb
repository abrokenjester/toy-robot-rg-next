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

  describe 'move' do
    context 'when facing north' do
      let(:robot) { Robot.new(2, 2, 'N') }
      it 'moves north' do
        robot.move
        expect(robot.position_y).to eql(3)
      end
    end

    context 'when facing south' do
      let(:robot) { Robot.new(2, 2, 'S') }
      it 'moves south' do
        robot.move
        expect(robot.position_y).to eql(1)
      end
    end

    context 'when facing west' do
      let(:robot) { Robot.new(2, 2, 'W') }
      it 'moves west' do
        robot.move
        expect(robot.position_x).to eql(1)
      end
    end

    context 'when facing east' do
      let(:robot) { Robot.new(2, 2, 'E') }
      it 'moves east' do
        robot.move
        expect(robot.position_x).to eql(3)
      end
    end
  end
  describe 'left' do
    context 'turns left' do
      let(:robot) { Robot.new(2, 2, 'N') }
      it 'changes facing to west' do
        robot.left
        expect(robot.facing).to eql('W')
      end
    end
    context 'turns left' do
      let(:robot) { Robot.new(2, 2, 'W') }
      it 'changes facing to west' do
        robot.left
        expect(robot.facing).to eql('S')
      end
    end
    context 'turns left' do
      let(:robot) { Robot.new(2, 2, 'S') }
      it 'changes facing to west' do
        robot.left
        expect(robot.facing).to eql('E')
      end
    end
    context 'turns left' do
      let(:robot) { Robot.new(2, 2, 'E') }
      it 'changes facing to west' do
        robot.left
        expect(robot.facing).to eql('N')
      end
    end
  end

  describe 'right' do
    context 'turns right' do
      let(:robot) { Robot.new(2, 2, 'N') }
      it 'changes facing to west' do
        robot.right
        expect(robot.facing).to eql('E')
      end
    end
    context 'turns right' do
      let(:robot) { Robot.new(2, 2, 'W') }
      it 'changes facing to west' do
        robot.right
        expect(robot.facing).to eql('N')
      end
    end
    context 'turns right' do
      let(:robot) { Robot.new(2, 2, 'S') }
      it 'changes facing to west' do
        robot.right
        expect(robot.facing).to eql('W')
      end
    end
    context 'turns right' do
      let(:robot) { Robot.new(2, 2, 'E') }
      it 'changes facing to west' do
        robot.right
        expect(robot.facing).to eql('S')
      end
    end
  end
  describe 'report' do
    let(:robot) { Robot.new(2, 2, 'E') }
    it 'reports the position' do
      expect(robot.report).to eql('The position x is 2, position y is 2 and the facing is E.')
    end
  end
end
