# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gemMiners_session',
  :secret      => 'd007ce384f45bf54d0c6d1099ba9912f5a588c82d0df6a187b0d4ef5b6ed148c26fb6ef600c0f77009648a88cb6d13e601e565274179e156cf781bab93c4eb3d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
