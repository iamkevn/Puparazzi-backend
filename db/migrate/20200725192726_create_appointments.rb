class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :message
      t.integer :user_id
      t.integer :photographer_id

      t.timestamps
    end
  end
end
