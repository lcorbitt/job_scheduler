json.extract! lead, :id, :first_name, :last_name, :company_name, :phone, :email, :notes, :user_id, :status, :created_at, :updated_at
json.url lead_url(lead, format: :json)
