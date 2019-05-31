class JobPost < ApplicationRecord
  extend PagedScope #customed paginaion, default 7 per page

  # scopes
  scope :filter_job_type, -> (filter){
    where("job_type like ?", "%#{filter}%")
  }

  # validations
  validates :company_url, format: URI::regexp(%w[http https])
  validates :job_type, inclusion: { in: [ 'software development', 'research science', 'data science', 'blockchain', 'product management', 'machine learning', 'management'],
    message: "%{value} is not a valid join type" }
end
