class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :loc
      t.datetime :time
      t.boolean :resp
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
