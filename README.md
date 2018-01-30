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

#### * When opening a new PR please add appropriate tags and milestone
   For now our existing tags are:
* `Target: Master` -- This tells us that the merge target for this branch is the master branch (will be useful when we start working on different release branches
* `Do Not Merge (RFC)` -- This tells us that this branch is not ready to merge yet, but comments are still requested from others 
* `Waiting for Comments` -- This is for when your PR is ready to be reviewed and potentially merged. Remove this tag if you are a reviewer and leave comments that need to be addressed.
* `Open Comments to Address` -- This is the tag you will add if you are reviewing another persons PR and leave comments for the PR author to address. When adding this remove the `Waiting for Comments` tag as well
    
For now the only milestone we have is MVP launch, more will be added over time as we add additional milestones
