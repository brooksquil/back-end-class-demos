require 'minitest/autorun'
require_relative 'lootbag'

class TestLootBag < Minitest::Test

    def setup
        @lootBag = LootBag.new("", "", "")
        @suzy = LootBag.new("Suzy", "Ball", false)
    end

    def test_if_instance_of_lootbag
        @lootbag = LootBag.new
        assert_instance_of LootBag, @lootbag
    end

 
    def test_toys_for_child_can_be_added_to_bag
    @lootBag.add_toy_for_child("kite", "suzy")
    assert_equal("kite", @lootBag.child_items("suzy")[0])
    end

    def test_toys_for_child_can_be_removed
        @lootBag.remove_toy_for_child("Kite", "Suzy")
        assert_contains!("Kite", @lootBag.child_items("Suzy"))
    end

    def test_list_all_children
        @lootBag.ls()
        assert_equal(["Suzy"], @lootBag.ls)
    end

    def test_to_list_toys_via_children
        @lootBag.list_toys_per_child("Suzy")
        assert_equal(["Kite"], @lootBag.list_toys_per_child)
    end

    def test_to_check_delivered_status
        @lootBag.delivered("Suzy")
        assert_true(@lootBag.delivered("Suzy"))
    end
end