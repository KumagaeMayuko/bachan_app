json.extract! diary, :id, :title, :content, :picture, :created_at, :updated_at
json.url diary_url(diary, format: :json)
json.picture url_for(diary.picture)
