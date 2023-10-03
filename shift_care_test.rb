require 'test/unit'
require_relative 'shift_care.rb'

class ShiftCareTest < Test::Unit::TestCase
  def test_by_name
    search_by_name = ShiftCare.new.find_by_name "John"
    assert_equal("John Doe", search_by_name[0].first["full_name"])
  end

  def test_by_email
    search_by_email = ShiftCare.new.find_by_email "jane"
    assert_equal("jane.smith@yahoo.com", search_by_email[0].first["email"])
  end
end
