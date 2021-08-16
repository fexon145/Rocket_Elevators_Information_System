# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Employee.destroy_all
User.destroy_all


user = User.create!(
email: "nicolas.genest@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "CEO",
FirstName: "Nicolas",
LastName: "Genest",
Email: "nicolas.genest@codeboxx.biz",
user: user)

user = User.create!(
email: "nadya.fortier@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Director",
FirstName: "Nadya",
LastName: "Fortier",
Email: "nadya.fortier@codeboxx.biz",
user: user)

user = User.create!(
email: "martin.chantal@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Assistant Director",
FirstName: "Martin",
LastName: "Chantal",
Email: "martin.chantal@codeboxx.biz",
user: user)
   
    
user = User.create!(
email: "mathieu.houde@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Captain",
FirstName: "Mathieu",
LastName: "Houde",
Email: "mathieu.houde@codeboxx.biz",
user: user)

user = User.create!(
  email:"patrick.thibault@codeboxx.biz" ,
  password:"codeboxx",
  password_confirmation:"codeboxx")
  user.add_role :admin  

employees=Employee.create!(
Title: "Captain",
FirstName: "Patrick",
LastName: "Thibault",
Email: "patrick.thibault@codeboxx.biz",
user: user )

user = User.create!(
email:"david.boutin@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "David",
LastName: "Boutin",
Email: "david.boutin@codeboxx.biz",
user: user )

user = User.create!(
email:"mathieu.lortie@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Mathieu",
LastName: "Lortie",
Email: "mathieu.lortie@codeboxx.biz",
user: user)

user = User.create!(
email:"thomas.carrier@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Thomas",
LastName: "Carrier",
Email: "thomas.carrier@codeboxx.biz",
user: user)

user = User.create!(
email:"serge.savoie@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Serge",
LastName: "Savoie",
Email: "serge.savoie@codeboxx.biz",
user: user)

user = User.create!(
email:"francis.patry-jessop@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Francis",
LastName: "Patry-Jessop",
Email: "francis.patry-jessop@codeboxx.biz",
user: user)

user = User.create!(
email:"mathieu.lefrancois@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Mathieu",
LastName: "Lefrancois",
Email: "mathieu.lefrancois@codeboxx.biz",
user: user)

user = User.create!(
email:"david.larochelle@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "David",
LastName: "Larochelle",
Email: "david.larochelle@codeboxx.biz",
user: user)

user = User.create!(
email:"nicolas.pineault@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Nicolas",
LastName: "Pineault",
Email: "nicolas.pineault@codeboxx.biz",
user: user)

user = User.create!(
email:"david.amyot@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "David",
LastName: "Amyot",
Email: "david.amyot@codeboxx.biz",
user: user)

user = User.create!(
email:"remi.gagnon@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Engineer",
FirstName: "Remi",
LastName: "Gagnon",
Email: "remi.gagnon@codeboxx.biz",
user: user)

user = User.create!(
email:"timothy.wever@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Developer",
FirstName: "Timothy",
LastName: "Wever",
Email: "timothy.wever@codeboxx.biz",
user: user)

user = User.create!(
email:"kiril.kleinerman@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Developer",
FirstName: "Kiril",
LastName: "Kleinerman",
Email: "kiril.kleinerman@codeboxx.biz",
user: user)

user = User.create!(
email:"emmanuela.derilus@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Developer",
FirstName: "Emmanuela",
LastName: "Derilus",
Email: "emmanuela.derilus@codeboxx.biz",
user: user)

user = User.create!(
email: "abdul.akeeb@codebozz.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Developer",
FirstName: "Abdul",
LastName: "Akeeb",
Email: "abdul.akeeb@codebozz.biz",
user: user)

user = User.create!(
email:"krista.sheely@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Developer",
FirstName: "Krista",
LastName: "Sheely",
Email: "krista.sheely@codeboxx.biz",
user: user)

user = User.create!(
email:"jonathan.murray@codeboxx.biz",
password:"codeboxx",
password_confirmation:"codeboxx")
user.add_role :admin

employees=Employee.create!(
Title: "Developer",
FirstName: "Jonathan",
LastName: "Murray",
Email: "jonathan.murray@codeboxx.biz",
user: user)



# Address Faker Rayan
require 'faker'
Faker::Config.locale = 'en'

types = ["Billing", "Shipping", "Home", "Business"];

for _ in 0..500
  fakedAddress = Faker::Address;
  address=Address.create!(
    TypeOfAddress: types.sample,
    Status: fakedAddress.state_abbr,
    Entity: "government",
    NumberAndStreet: fakedAddress.street_address,
    Apt: fakedAddress.street_address,
    City: fakedAddress.city,
    PostalCode: fakedAddress.postcode,
    Country: fakedAddress.country,
    Notes:"bdsjfhggfhsdfbdggeihigigheibivgdufbdjguiogfneklfhgfldfkldgfklfbsdklfgdkfgbdiogp"
  )
  puts fakedAddress
  puts address
end

# address=Address.create!(
# TypeOfAddress: "donnnow",
# Status: "ON",
# Entity: "government",
# NumberAndStreet: "24 Kingston",
# Apt: "67",
# City: "Montreal",
# PostalCode:"j78h65",
# Country:"Canada",
# Notes:"bdsjfhggfhsdfbdggeihigigheibivgdufbdjguiogfneklfhgfldfkldgfklfbsdklfgdkfgbdiogp")

# customer=Customer.create!(
# CompanyName: "johnINC",
# NameOfContact: "Nicolas",
# CompanyContactPhone: "78918-652-8569",
# EmailOfTheCompany: "njohn connor@chose",
# CompanyDescription: "johjdjffdbidhdiphdkfdighgndipghd;kgdgiphg;kgnipghgipghgegiehgeihgioglgseoighesip",
# NameOfServiceTechAuthority: "John Doe",
# TechAuhtorityPhone:"5143769087",
# TechManagerServiceEmail:"yahoo@email",
# user: user,
# address:address)


# building=Building.create!(
# FullNameOfTheBuildingAdministrator: "john",
# EmailOfTheAdministratorOfTheBuilding: "Nicolas@chose",
# PhoneNumberOfTheBuildingAdministrator: "418-652-8569",
# FullNameOfTheTechContactForTheBuilding: "njohn connor",
# TechContactEmail: "john@chose",
# TechContactPhone: "452-625-5455",
# customer: customer)

# building1 = BuildingDetail.create!(
# InformationKey: "type",
# Value: "Commercial",
# building: building)

# battery=Battery.create!(
# CertificateOfOperations: "jnkluiuiuiuoouiuuiuouiuo",
# Info: "opoo",
# Notes:"bdsjfhggfhsdfbdggeihigigheibivgdufbdjguiogfneklfhgfldfkldgfklfbsdklfgdkfgbdiogp")
