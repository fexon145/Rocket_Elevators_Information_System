class Customers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.datetime :customers_creation_date
      t.string :compagny_name
      t.string :full_name_of_the_company_contact
      t.string :company_contact_phone
      t.string :email_of_the_company_contact
      t.string :company_description
      t.string :full_name_of_service_technical_authority
      t.string :technical_authority_phone_for_service
      t.string :technical_manager_email_for_service
    end
  end
end
