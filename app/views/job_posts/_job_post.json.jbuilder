json.extract! job_post, :id, :title, :description, :company_name, :company_url, :join_type, :created_at, :updated_at
json.url job_post_url(job_post, format: :json)
