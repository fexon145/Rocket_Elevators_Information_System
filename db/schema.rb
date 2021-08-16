# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_15_145219) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "TypeOfAddress"
    t.string "Status"
    t.string "Entity"
    t.string "NumberAndStreet"
    t.string "Apt"
    t.string "City"
    t.string "PostalCode"
    t.string "Country"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "BType"
    t.date "DateOfCommissioning"
    t.date "DateOfLastInspection"
    t.string "CertificateOfOperations"
    t.text "Info"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "buildings_id"
    t.bigint "employees_id"
    t.index ["buildings_id"], name: "index_batteries_on_buildings_id"
    t.index ["employees_id"], name: "index_batteries_on_employees_id"
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "InformationKey"
    t.string "Value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "building_id"
    t.index ["building_id"], name: "index_building_details_on_building_id"
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "FullNameOfTheBuildingAdministrator"
    t.string "EmailOfTheAdministratorOfTheBuilding"
    t.string "PhoneNumberOfTheBuildingAdministrator"
    t.string "FullNameOfTheTechContactForTheBuilding"
    t.string "TechContactEmail"
    t.string "TechContactPhone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_buildings_on_customer_id"
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ColumnType"
    t.integer "NbOfFloorsServed"
    t.string "Status"
    t.text "Info"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "batteries_id"
    t.index ["batteries_id"], name: "index_columns_on_batteries_id"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "CompanyName"
    t.string "NameOfContact"
    t.string "CompanyContactPhone"
    t.string "EmailOfTheCompany"
    t.text "CompanyDescription"
    t.string "NameOfServiceTechAuthority"
    t.string "TechAuhtorityPhone"
    t.string "TechManagerServiceEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "SerialNumber"
    t.string "Model"
    t.string "ElevatorType"
    t.string "Status"
    t.date "DateOfCommissioning"
    t.date "DateOfLastInspection"
    t.string "CertificateOfInspection"
    t.text "Info"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "columns_id"
    t.index ["columns_id"], name: "index_elevators_on_columns_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Title"
    t.string "Email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "FullName"
    t.string "CompanyName"
    t.string "Email"
    t.string "Phone"
    t.string "ProjectName"
    t.string "ProjectDescription"
    t.string "Departement"
    t.text "Message"
    t.binary "AttachedFile"
    t.datetime "DateOfRequest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "BuildingType"
    t.integer "NumberOfFloors"
    t.integer "NumberOfBasements"
    t.integer "NumberOfcompanies"
    t.integer "NumberOfParkingSpots"
    t.integer "NumberOfElevators"
    t.integer "NumberOfApartments"
    t.integer "NumberOfCorporations"
    t.integer "NumberOfOccupany"
    t.integer "NumberOfBusinessHours"
    t.integer "ElevatorAmount"
    t.integer "ColumnAmount"
    t.string "ProductLine"
    t.integer "ElevatorUnitCost"
    t.integer "ElevatorTotalCost"
    t.integer "InstallationCost"
    t.integer "TotalPrice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "batteries", "buildings", column: "buildings_id"
  add_foreign_key "batteries", "employees", column: "employees_id"
  add_foreign_key "building_details", "buildings"
  add_foreign_key "buildings", "customers"
  add_foreign_key "columns", "batteries", column: "batteries_id"
  add_foreign_key "customers", "addresses"
  add_foreign_key "customers", "users"
  add_foreign_key "elevators", "columns", column: "columns_id"
  add_foreign_key "employees", "users"
end
