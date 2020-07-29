class CreatePhotographers < ActiveRecord::Migration[6.0]
  def change
    create_table :photographers do |t|
      t.string :services

      t.timestamps
    end
  end
end
