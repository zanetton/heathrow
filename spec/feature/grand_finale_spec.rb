require 'capybara/rspec'

## Note these are just some guidelines!
## Feel free to write more tests!!

# Given 6 planes, each plane must land.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have status "landed"
# Once all planes are in the air again, check that they have status "flying!"

feature 'Grand Finale' do

  scenario 'all planes can land' do
    plane = Plane.new
    airport = Airport.new
    expect(airport).to respond_to(:accept)
    expect(plane).to respond_to(:land)
  end


    scenario 'all planes can take off' do
      plane = Plane.new
      airport = Airport.new
      expect(airport).to respond_to(:release)
      expect(plane).to respond_to(:take_off)
    end
end
