require 'minitest/autorun'
require_relative 'dog'


class DogTest < Minitest::Test
    def setup
        @dog = Dog.new('')
    end

    def test_if_instance_of_animal
        assert_instance_of Dog, @dog
    end
    
    def test_initialize_with_no_args
        assert_equal 0, @dog.speed
    end

    def test_if_speed_is_accessible_property
        @dog.speed = 30
        assert_equal @dog.speed, 30
    end

    def test_if_speed_is_a_number
        @dog.speed = 101
        assert_instance_of Integer, @dog.speed
        @dog.speed = 20.123
        assert_instance_of Float, @dog.speed
    end

end