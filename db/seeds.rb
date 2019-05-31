join_types = [
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
join_types.each_with_index do |v, i|
  JobPost.create!(
    title: "job#{i}",
    description:"Job description#{i}" ,
    company_name: "company#{i}",
    company_url: "http://company#{i}.com",
    join_type: v
  )
end
