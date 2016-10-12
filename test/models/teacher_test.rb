require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test "validations: name cannot be blank" do
    teacher = Teacher.new

    teacher.wont_be :valid?
    teacher.errors.keys.must_include(:name)
  end
end
