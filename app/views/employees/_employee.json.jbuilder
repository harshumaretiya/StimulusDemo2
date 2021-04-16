json.extract! employee, :id, :name, :dept_name, :emp_number, :emp_details, :address, :created_at, :updated_at
json.url employee_url(employee, format: :json)
