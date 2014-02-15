require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires content" do
      status = Status.new
      assert !status.save
      assert !status.errors[:context].empty?
    end
    
    test "that status content is at least two letters long" do
        status = Status.new
        status.context = "H"
        assert !status.save
        assert !status.errors[:context].empty?
    end
    
    test "that status has a user id" do
        status = Status.new
        status.context = "Hello"
        assert !status.save
        assert !status.errors[:user_id].empty?
    end
end
