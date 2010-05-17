# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_course_manager_session',
  :secret      => '6fe713f19b23594cda182e1e16248afc02927913b5c76411845eb1cbd83f70dc0c2af38c2357c02f2cc4c77ef03930b9ace57b29f8a1d9af9335122d9b037de2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
