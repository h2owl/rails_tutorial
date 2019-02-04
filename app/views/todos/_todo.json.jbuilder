json.extract! todo, :id, :user_id, :title, :content, :done, :created_at, :updated_at
json.url todo_url(todo, format: :json)
