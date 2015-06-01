require 'airport'
require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do

  describe 'landing' do
    it 'receives a plane'do
      plane = Plane.new
      airport = Airport.new
      airport.accept(plane)
      expect(airport.plane_count).to eq(1)
    end
  end
    describe 'take off' do
     it 'releases a plane' do
      airport = Airport.new
      plane = @planes
      airport.release(plane)
      expect(airport.plane_count).to eq(0)
    end
  end


  describe 'traffic control' do
    context 'when airport is full' do
      it 'does not allow a plane to land'do
      planes.count = 6
      expect(airport.accept(plane).to raise_error
      end
    end
  end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'when weather conditions are stormy' do
      xit 'does not allow a plane to take off'

      xit 'does not allow a plane to land'
    end
end
