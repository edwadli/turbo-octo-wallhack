class AddDateMeet8ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet8, :string
  end
end
