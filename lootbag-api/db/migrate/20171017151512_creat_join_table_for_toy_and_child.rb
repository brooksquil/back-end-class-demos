class CreatJoinTableForToyAndChild < ActiveRecord::Migration[5.1]
  def change
  create_join_table :children, :toys
  end
end
