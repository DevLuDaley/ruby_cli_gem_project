require 'cli'
RSpec.describe Cli do
  
      describe 'math' do
  it "*" do
    expect(RubyCliGemProject::Cli.math).not_to be nil
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end


# describe 'Car' do

#   describe 'attributes' do
    
#     it "allows reading and writing for :make" do
#       car = Car.new
#       car.make = 'Test'
#       expect(car.make).to eq('Test')
#     end

end
