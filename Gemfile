source 'https://rubygems.org'
gemspec

# Frameworks
gem "rack"

# Math libraries
gem "backports", :platforms => :mri_18

# Compatibility
gem "SystemTimer", "1.2.3", :platforms => :mri_18

# Testing
gem "mocha", :require=>false
gem "shoulda", :require=>false # Requires test/unit
gem "timecop", :require=>false
gem "webmock", :require=>false

group :development do
  gem "appraisal", ">= 1.0.0.beta2" # For setting up test Gemfiles

  # Documentation
  gem "jekyll"
  gem "rake"
  gem "RedCloth"
  gem "yard"
end
