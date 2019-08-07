Interview Exercise
===
This is just an example of a framework to ruby tests using siteprism on page objects

## Environment Setup
ruby version:
  ```
  > ruby -v
  ruby 2.6.0
  ```
installing bundler gem to be able to use it for next gems:
  ```
  > gem install bundler
  ```
installing gems:
  ```
  > bundle install
  ```

## Test execution
  ```
  > bundle exec cucumber
  ```

### Environment Variables

* **DRIVER** - for now the only available is local
* **BROWSER** - (chrome|headless_chrome|firefox)

## Exercise
* Create 2 tests you find necessary to cover the login and sign in pages.
* Create the page object elements and sections you see fit (or mention them if you have no time to do it)
* Please refer tests that were not covered but that you would implement if you had more time
