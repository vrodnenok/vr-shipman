class CreateVessels < ActiveRecord::Migration
  def change
    create_table :vessels do |t|
      t.string :name
      t.string :vessels_type
      t.string :nav_area
      t.integer :yob
      t.integer :dwt
      t.integer :dwcc
      t.integer :grt
      t.integer :nrt
      t.decimal :volume
      t.decimal :speed_loaded
      t.decimal :speed_ballast
      t.decimal :fuel1_uw
      t.decimal :fuel2_uw
      t.decimal :fuel1_ip
      t.decimal :fuel2_ip
      t.decimal :lo1_uw
      t.decimal :lo2_uw
      t.decimal :lo1_ip
      t.decimal :lo2_ip
      t.decimal :draft
      t.decimal :salary
      t.decimal :fw_cons
      t.decimal :hire
      t.decimal :office_exp
      t.decimal :pandi
      t.string :pic_url
      t.string :other_url
      t.text :comment
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :vessels, :user_id
  end
end
