# CarrierWaveDirect Example Application

This Rails application demonstrates how to use [CarrierWaveDirect](https://github.com/dwilkie/carrierwave_direct) to upload files directly to S3 bypassing your server.

The application uses [Resque](https://github.com/defunkt/resque) to download and process your files in the background. For more information about how to use [CarrierWaveDirect](https://github.com/dwilkie/carrierwave_direct) in your application please visit the [README](https://github.com/dwilkie/carrierwave_direct)

## Installation

Install the example application:

    git clone git@github.com:dwilkie/carrierwave_direct_example.git
    cd carrierwave_direct_example
    bundle install --path vendor
    bundle exec rake db:migrate
    bundle exec rails s

## Contributing to the CarrierWaveDirect Example Application

This example application demonstrates only the basics of [CarrierWaveDirect](https://github.com/dwilkie/carrierwave_direct). Pull requests are very welcome in order to demonstrate more advanced features.
