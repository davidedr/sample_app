# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(toke_file)
		File.read(toke_file).chomp
	else
		token =SecureRandom.hex(64)
		File.write(toke_file, token)
		token
	end
end

SampleApp::Application.config.secret_key_base = '87c83053506094fbdd4010af634172db134a0ac003704b1ce8d2612c343649f0916088d76515fd25bb962a6f8966bf02ac8d5736aaeca83bca0658cb0641bca2'