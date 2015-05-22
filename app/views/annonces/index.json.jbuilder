json.array!(@annonces) do |annonce|
  json.extract! annonce, :id, :titre, :description, :prix, :image
  json.url annonce_url(annonce, format: :json)
end
