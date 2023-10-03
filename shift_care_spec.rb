require "rspec/autorun"

describe ShiftCare, "shiftcare" do
  it "it returns matched json values with given name" do
    obj = ShiftCare.new.find_by_name('John')
    debug
    expect(obj).to equal 'John Doe'
  end
end

