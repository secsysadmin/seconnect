# EXAMPLE BUDGET SEEDS
budget01 = Budget.create!(
  {name: "Executive", fiscal_year: "2022-2023"}
)
  budget01_category01 = BudgetCategory.create!(
    {name: "Assistant", budget_id: budget01.id}
  )
    budget01_category01_subcategory01 = BudgetSubcategory.create!(
      {name: "Proffesional Photos", budgeted: "50.0", budget_category_id: budget01_category01.id}
    )
  budget01_category02 = BudgetCategory.create!(
    {name: "Facilities", budget_id: budget01.id}
  )
    budget01_category02_subcategory01 = BudgetSubcategory.create!(
      {name: "Facility Rental", budgeted: "50.0", budget_category_id: budget01_category02.id}
    )
    budget01_category02_subcategory02 = BudgetSubcategory.create!(
      {name: "Parking", budgeted: "40.0", budget_category_id: budget01_category02.id}
    )

budget02 = Budget.create!(
  {name: "Legislation", fiscal_year: "2022-2023"}
)
  budget02_category01 = BudgetCategory.create!(
    {name: "Company Showcase", budget_id: budget02.id}
  )
    budget02_category01_subcategory01 = BudgetSubcategory.create!(
      {name: "Facilities", budgeted: "50.0", budget_category_id: budget02_category01.id}
    )
    budget02_category01_subcategory01 = BudgetSubcategory.create!(
      {name: "Food", budgeted: "40.0", budget_category_id: budget02_category01.id}
    )
  budget02_category02 = BudgetCategory.create!(
    {name: "Marketing", budget_id: budget02.id}
  )
    budget02_category02_subcategory01 = BudgetSubcategory.create!(
      {name: "CopyCorner", budgeted: "50.0", budget_category_id: budget02_category02.id}
    )

budget03 = Budget.create (
  {name: "Student Relations", fiscal_year: "2022-2023"}
) 
  budget03_category01 = BudgetCategory.create!(
    {name: "Hospitality", budget_id: budget03.id}
  )
    budget03_category01_subcategory01 = BudgetSubcategory.create!(
      {name: "Box Lunch", budgeted: "50.0", budget_category_id: budget03_category01.id}
    )
    budget03_category01_subcategory02 = BudgetSubcategory.create!(
      {name: "Breakfast", budgeted: "40.0", budget_category_id: budget03_category01.id}
    )
    budget03_category01_subcategory02 = BudgetSubcategory.create!(
      {name: "Drinks", budgeted: "30.0", budget_category_id: budget03_category01.id}
    )
    budget03_category01_subcategory02 = BudgetSubcategory.create!(
      {name: "Recruiter Gifts", budgeted: "20.0", budget_category_id: budget03_category01.id}
    )
  budget03_category02 = BudgetCategory.create!(
    {name: "Facilities", budget_id: budget03.id}
  )
    budget03_category02_subcategory01 = BudgetSubcategory.create!(
      {name: "Online Services", budgeted: "50.0", budget_category_id: budget03_category02.id}
    )
###

vendor = Vendor.create!(
  {vendor_name: "no vendor", street_address: "na", city: "na", state: "na", zip_code: "na", email: "na", phone_number: "1", "tax_identification_number": "1"}
)
committee = Committee.create!(
  {committee_name: "default", user_id: nil}
)
User.create!([
  {first_name: "user", last_name: "brs", street_address: "123 street", city: "College Station", state: "Texas", zip_code: "77845", uin: 123, email: "secbrsuser@gmail.com", phone_number: "123-456-7890", committee_id: committee.id, permission_type: "user", uid: "100003231053752770743"},
  {first_name: "admin", last_name: "brs", street_address: "123 street", city: "College Station", state: "Texas", zip_code: "77845", uin: 123, email: "secbrs23@gmail.com", phone_number: "123-456-7890", committee_id: committee.id, permission_type: "admin", uid: "109290679077990497398"}
])