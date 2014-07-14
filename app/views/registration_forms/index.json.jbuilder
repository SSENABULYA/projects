json.array!(@registration_forms) do |registration_form|
  json.extract! registration_form, :id, :last_Name, :first_Name, :country, :city, :telephone_Number, :street, :email
  json.url registration_form_url(registration_form, format: :json)
end
