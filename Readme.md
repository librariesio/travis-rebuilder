# [travis-rebuilder](https://libraries.io/github/librariesio/travis-rebuilder)

Sinatra app for rerunning travis-ci tests whenever a new version of a dependency is discovered by [Libraries.io](https://libraries.io) using the repository web hook feature.

## Usage

The easiest option is to deploy to heroku with the deploy button below:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Then add the url of your app to web hooks section for your repo on https://libraries.io

<hr>

Or to run it somewhere else, clone it from github:

   git clone https://github.com/librariesio/travis-rebuilder.git

Install dependencies:

    bundle install

Setup config environment variables:

    GITHUB_TOKEN=mygithubapitoken
    DEFAULT_BRANCH=master (optional)

Start the app:

    rackup

Add the url of your app to web hooks section for your repo on https://libraries.io:

    http://myapphost.com/webhook

## Development

Source hosted at [GitHub](https://github.com/librariesio/travis-rebuilder).
Report issues/feature requests on [GitHub Issues](https://github.com/librariesio/travis-rebuilder/issues). Follow us on Twitter [@librariesio](https://twitter.com/librariesio). We also hangout on [Gitter](https://gitter.im/librariesio/support).

### Getting Started

New to Ruby? No worries! You can follow these instructions to install a local server, or you can use the included Vagrant setup.

#### Installing a Local Server

First things first, you'll need to install Ruby 2.4.0. I recommend using the excellent [rbenv](https://github.com/rbenv/rbenv),
and [ruby-build](https://github.com/rbenv/ruby-build)

```bash
rbenv install 2.4.0
rbenv global 2.4.0
```

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Add documentation if necessary.
 * Commit, do not change procfile, version, or history.
 * Send a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2016 Andrew Nesbitt. See [LICENSE](https://github.com/librariesio/travis-rebuilder/blob/master/LICENSE) for details.
