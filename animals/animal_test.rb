require 'minitest/autorun'
require_relative 'animal'

class AnimalTest < Minitest::Test
    def setup
        @animal = Animal.new
        @cat = Animal.new('Cat')
        @owl = Animal.new('Owl', 'Bird')
    end

    def test_initialize_with_no_args
        assert_nil @animal.name
        assert_nil @animal.species
        assert_equal 0, @animal.speed
        assert_equal 0, @animal.legs

    end

    def test_initialize_with_one_arg
        assert_equal "Liger", @cat.name
        assert_nil @cat.species
        assert_equal 0, @cat.speed
        assert_equal 0, @cat.legs
    end

    def test_initialize_with_two_args
        assert_equal "Owl", @owl.name
        assert_equal "Bird", @owl.species
        assert_equal 0, @cat.speed
        assert_equal 0, @cat.legs
    end
    
    def test_if_name_is_a_string
        @animal.name = "ostrich"
        assert_match @animal.name, "ostrich"
        assert_match @cat.name, "Liger"   
        assert_match @owl.name, "Owl"
    end

    def test_if_name_is_an_accessible_property
        assert_instance_of String, @cat.name
        assert_instance_of String, @owl.name
    end
end