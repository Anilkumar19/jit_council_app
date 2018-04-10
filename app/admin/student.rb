ActiveAdmin.register Student do
     permit_params :name, :date_od_birth, :father_name, :admint_branch, :community, :contact_number, :address, :cut_off_marks, :markshett, :transfer_certificate, :ten_marksheet, :community_certificate, :aadhar_card, :income_certificate, :graduation_cerificate, :admin_user_id



   form :html => { :multipart => true } do |f|
      f.inputs "Student" do 
        f.input :admin_user, label: "Staff User", required: true, prompt: "select staff"
        f.input :name, required: true
        f.input :father_name, required: true
        f.input :date_od_birth, label: "Date Of Birth"
        f.input :contact_number
        f.input :admint_branch
        f.input :community
        f.input :cut_off_marks
        f.input :markshett, label: "12th Marksheet"
        f.input :transfer_certificate
        f.input :ten_marksheet, label: "10th Marksheet"
        f.input :community_certificate
        f.input :aadhar_card
        f.input :income_certificate
        f.input :graduation_cerificate
        f.input :address
       end
      f.actions
    end
end
