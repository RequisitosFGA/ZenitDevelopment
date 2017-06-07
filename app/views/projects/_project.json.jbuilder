json.extract! project, :id, :project_name, :first_contact, :signature_date, :project_value, :project_conclusion_date, :expected_conclusion_date, :created_at, :updated_at
json.url project_url(project, format: :json)
