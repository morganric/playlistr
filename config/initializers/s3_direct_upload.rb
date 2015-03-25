S3DirectUpload.config do |c|
  c.access_key_id = "AKIAIIMLOVGRQG7GENAQ"       # your access key id
  c.secret_access_key = "JbQ7HZufcvln4g9+kL8qvK8TR5DrNiwZFTsg2jem"   # your secret access key
  c.bucket = "playlistrapp"              # your bucket name
  c.region = 'us-west-2'              # region prefix of your bucket url. This is _required_ for the non-default AWS region, eg. "s3-eu-west-1"
  c.url = "https://playlistrapp.s3.amazonaws.com/"                # S3 API endpoint (optional), eg. "https://#{c.bucket}.s3.amazonaws.com/"
end
