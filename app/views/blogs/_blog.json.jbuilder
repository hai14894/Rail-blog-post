json.extract! blog, :id, :title, :body, :posted_at, :min_read, :created_at, :updated_at
json.url blog_url(blog, format: :json)
