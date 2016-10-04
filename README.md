# Steps
This README contains the steps that I executed in order to get the models generated in this way.

1. `rails generate model Student`
1. Update the migration to include the fields I want
1. `rake db:migrate`
1. `rails generate model Teacher`
1. Update the migration to include the fields I want
1. `rake db:migrate`
1. `rails generate model Course`
1. `rails generate model Assignment`
1. `rails generate model Mark`
