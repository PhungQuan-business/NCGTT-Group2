json.extract! booklist, :id, :tilte, :author, :publisher, :year, :available, :type_id, :bookid, :created_at, :updated_at
json.url booklist_url(booklist, format: :json)
