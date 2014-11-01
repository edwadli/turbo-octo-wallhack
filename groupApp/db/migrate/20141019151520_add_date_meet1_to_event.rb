class AddDateMeet1ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet1, :string
  end
end
