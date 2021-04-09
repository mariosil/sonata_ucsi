# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version `2.4.5`, rails `5.2.5`

* System dependencies
  * Requires postgresql server runing in local machine.

* Configuration
  * Only about database. Check `database.yml` to set your local DB credentials.
  * Ensure to create user role into your postgres server that corresponds to provided username value in `database.yml`.

* Database creation
  * Run `rails db:setup`, then run `rails db:migrate`.
  * Don't forget to run `bundle install` before all above.

* Database initialization
  * Open rails consonle (`rials c`) then create a User with role `:admin`.
    * This will be the first user that allows to create Dealerships and Cars
  ```ruby
  u = User.new(email: 'your@email.com', password: 'yourpass', password_confirmation: 'yourpass')
  u.save
  u.add_role :admin
  ```

* How to run the test suite
  * Be sure to locate into root project folder, then run `rspec`

* Services (job queues, cache servers, search engines, etc.)
  * There is no additional services, just `postgresql`.

* Deployment instructions
  * N/A
  * For development purposes just run `rails s`.
