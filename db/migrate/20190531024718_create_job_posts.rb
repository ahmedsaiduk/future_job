class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
      t.string :title
      t.text :description
      t.string :company_name
      t.string :company_url
      t.string :job_type

      t.timestamps
    end
  end
end
