class AddDateMeet4ToEvent < ActiveRecord::Migration
  def change
    add_column :events, :datemeet4, :string
  end
end
