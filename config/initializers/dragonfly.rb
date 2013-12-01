require 'dragonfly'

app = Dragonfly[:images]
app.datastore = Dragonfly::DataStorage::S3DataStore.new

app.datastore.configure do |c|
  c.bucket_name = ENV['AWS_BUCKET']
  c.access_key_id = ENV['AWS_KEY']
  c.secret_access_key = ENV['AWS_SECRET_KEY']
end

