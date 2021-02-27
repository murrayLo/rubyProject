json.extract! lecturer, :id, :title, :fname, :sname, :subject, :created_at, :updated_at
json.url lecturer_url(lecturer, format: :json)
