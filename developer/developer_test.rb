require 'minitest/autorun'
require_relative './developer'

class DeveloperTest < MiniTest::Test

  def setup
    @dev = Developer.new
  end

  def test_if_instance_of_developer
    dev = Developer.new
    assert_instance_of Developer, @dev
    # assert_kind_of Developer, dev
  end

  def test_description_returns_a_string
    assert_kind_of String, @dev.description
    assert_equal "Runs on sweat, blood, and coffee", @dev.description
  end

  def test_description_doesnt_return_a_number
    refute_kind_of Integer, @dev.description
  end

  def test_code_output
    assert_output "Code code code" do
      @dev.code
    end
  end

  def test_code_output_another_way
    output, error = capture_io do
      @dev.code
    end
    assert_match("Code code code", output)
  end

  def teardown
  end
end
# class
# instance of specific class, or any parent classes assert_assistance

