require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# When we create a new plane, it should be "flying",
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should
# be "landed"
#
# When the plane takes of from the airport, it should be "flying" again
#
# Think about your implementation - does it allow a plane to be "flying" and landed?
# Are you testing that?

describe Plane do

  describe 'landing' do
    it 'A plane can land'do
      plane = Plane.new
      expect(plane).to respond_to(:land)
    end
  end

  describe 'take off' do
    it 'A plane to take off' do
      plane = Plane.new
      expect(plane).to respond_to(:take_off)
  end
end

  it 'is flying when created' do
    plane= Plane.new
    expect(plane).to be_flying
  end

  it 'is landed after landing' do
    plane = Plane.new
    plane.land
    expect(plane).not_to be_flying
  end

  it 'is flying after take off' do
    plane = Plane.new
    plane.take_off
    expect(plane).to be_flying
  end

end
