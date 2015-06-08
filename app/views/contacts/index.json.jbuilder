json.array!(@contacts) do |contact|
  json.extract! contact, :id, :contact_name, :contact_email, :contact_phone, :contact_help, :contact_notes, :contact_status, :—no-stylesheets
  json.url contact_url(contact, format: :json)
end
