require './lib/grid.rb'

describe 'grid init' do
  let(:grid) { Grid.new }

  it 'creates a new grid' do
    expect(grid).not_to eq nil
  end

  it 'has dimensions 5 by 5' do
    expect(grid.boundary_x).to eql(4)
    expect(grid.boundary_y).to eql(4)
  end
end
