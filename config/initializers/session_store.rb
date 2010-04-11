# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ver01_session',
  :secret      => 'e0d67460e2391946b1d3b497a97c3efa9f0324461fa31b685ba7a7cfbb479c6c3c5b968e3eda69b4ee0ca34a0ab5325f87f92de007d5d9441435ad34c5827553'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
