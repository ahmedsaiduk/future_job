class JobPost < ApplicationRecord
  extend PagedScope #customed paginaion, default 7 per page
  enum join_type: [ 'software development', 'research science', 'data science', 'blockchain', 'product management', 'machine learning', 'management']

  # validations
  validates :company_url, format: URI::regexp(%w[http https])
  validates :join_type, inclusion: { in: [ 'software development', 'research science', 'data science', 'blockchain', 'product management', 'machine learning', 'management'],
    message: "%{value} is not a valid join type" }
end
