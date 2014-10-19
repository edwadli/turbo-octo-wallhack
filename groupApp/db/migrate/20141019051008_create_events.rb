class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :typemeet
      t.integer :urgency
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
