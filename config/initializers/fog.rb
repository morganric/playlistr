  CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIIMLOVGRQG7GENAQ',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'us-west-2'                  # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'playlistrapp'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end