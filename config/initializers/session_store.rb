# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rubyconf5k_session',
  :secret      => '49916c6c9064dc44ab892971d9635d808c715c5e98641adaea96dc9ec07b6fdd7450bfdca06c332796a2d1a84101e9e8bfef037be0f46c4e1dabd345e7081898'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
