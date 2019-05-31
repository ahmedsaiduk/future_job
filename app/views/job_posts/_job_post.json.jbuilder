json.extract! job_post, :id, :title, :description, :company_name, :company_url, :job_type
json.date_posted job_post.created_at
