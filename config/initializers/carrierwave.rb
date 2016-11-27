CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Settings.aws.access_key,
    aws_secret_access_key: Settings.aws.secret_access_key,
    region: 'ap-northeast-1'
  }
  config.fog_directory = 'noink-api'
end

