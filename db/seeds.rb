job_types = [
  'software development',
  'research science',
  'data science',
  'blockchain',
  'product management',
  'machine learning',
  'management',
  'data science',
  'blockchain',
  'product management',
  'machine learning'
]

job_types.each_with_index do |v, i|
  i += 1
  JobPost.create!(
    title: "job#{++i}",
    description:"Job description#{i}" ,
    company_name: "company#{i}",
    company_url: "http://company#{i}.com",
    job_type: v
  )
end
