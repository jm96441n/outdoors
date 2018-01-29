# README

## Outdoors

An application to connect the wide community of people who participate
in outdoor sports. This application will allow users to leave reviews, drop pins,
and post photos and videos about their favorite locations, as well as meet up
with others around them.

## Set-Up

So for your initial set up, you're going to want to make sure you're using
Ruby 2.4.0 (you can specify this using RVM, Rbenv, or Chruby. I prefer Chruby [docs here](https://github.com/postmodern/chruby))

From there your steps are:
1. Run `bundle install`
2. Setup your database (`rails db:create` followed by `rails db:migrate`)
3. Profit.... Well for now, as the application becomes more complex there will be more steps added,
such as setup for postgis for storing geographic data, setting up parallel testing environments
in order to run specs faster, etc.

## Contributing

#### * All new code must be properly commented:
  This means when you add a new method, it must have a preceding comment explaining it's function,
  as well as the format of the returned value

  ```
    # This method does a thing, and returns an array of things
    def does_a_thing
       @array = do the thing
    end

    # This method returns true if the thing is done
    def thing_done?
      return unless @array
      true
    end
  ```
#### * All new code must be properly tested
  This means that 100% test coverage must be maintained

#### * New functionality should match up to Trello board ticket
