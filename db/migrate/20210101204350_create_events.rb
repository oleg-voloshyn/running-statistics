class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :date
      t.string :country
      t.string :city
      t.string :name
      t.string :distance
      t.text :desc
      t.string :number
      t.time :time
      t.string :distance
      t.string :event_type
      t.string :string

      t.timestamps
    end
  end
end
