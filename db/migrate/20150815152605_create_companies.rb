class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :site_link
      t.string :description
      t.string :title
      t.string :company_image

      t.timestamps null: false
    end
  end
end
