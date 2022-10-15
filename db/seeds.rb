Committee.create!([
  {committee_name: "default", budget: "0.0", user_id: nil}
])
User.create!([
  {first_name: "user", last_name: "brs", street_address: "123 street", city: "College Station", state: "Texas", zip_code: "77845", uin: 123, email: "secbrsuser@gmail.com", phone_number: "123-456-7890", committee_id: 1, permission_type: "user", uid: "100003231053752770743"},
  {first_name: "admin", last_name: "brs", street_address: "123 street", city: "College Station", state: "Texas", zip_code: "77845", uin: 123, email: "secbrs23@gmail.com", phone_number: "123-456-7890", committee_id: 1, permission_type: "admin", uid: "109290679077990497398"}
])
