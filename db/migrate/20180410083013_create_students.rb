class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :date_od_birth
      t.string :father_name
      t.string :admint_branch
      t.string :community
      t.string :contact_number
      t.text :address
      t.string :cut_off_marks
      t.boolean :markshett
      t.boolean :transfer_certificate
      t.boolean :ten_marksheet
      t.boolean :community_certificate
      t.boolean :aadhar_card
      t.boolean :income_certificate
      t.boolean :graduation_cerificate
      t.integer :admin_user_id

      t.timestamps null: false
    end
  end
end
