json.array!(@vessels) do |vessel|
  json.extract! vessel, :id, :name, :vessels_type, :nav_area, :yob, :dwt, :dwcc, :grt, :nrt, :volume, :speed_loaded, :speed_ballast, :fuel1_uw, :fuel2_uw, :fuel1_ip, :fuel2_ip, :lo1_uw, :lo2_uw, :lo1_ip, :lo2_ip, :draft, :salary, :fw_cons, :hire, :office_exp, :pandi, :pic_url, :other_url, :comment, :user_id
  json.url vessel_url(vessel, format: :json)
end
