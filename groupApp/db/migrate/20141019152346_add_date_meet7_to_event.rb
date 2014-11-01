class AddDateMeet7ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet6, :string
  end
end
