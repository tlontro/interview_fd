# frozen_string_literal: true

# help methods
module Helpers
  def wait_until(
    time = 60,
    sleep_time = 0.5,
    msg = 'Condition was not achieved in time!',
    should_break = true
  )

    raise 'no block given!' unless block_given?

    retries = 0
    begin
      sleep(sleep_time)
      yield ? (return true) : (raise 'still false!')
    rescue RuntimeError
      retries += 1
      retry if retries < (time / sleep_time)
    end

    should_break == true ? (raise msg) : (return false)
  end
end

World(Helpers)
