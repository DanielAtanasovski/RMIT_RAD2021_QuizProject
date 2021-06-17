# s3658474 Daniel Atanasovski
# Quiz Project

NOTE: JSON file is read on server start through config/application.rb, so server must be restarted (and reset to clear Database) in order to see new JSON file additions.

Improvements: Code is tightly coupled with JSON file and the database, as such directly accessing the Quiz API would require a substantial rewrite of the code,
of which I wish I had the foresight to prevent this at the start of the project. :(

HIGHEST LEVEL COMPLETED: CREDIT

API_KEY = 'A2bVAvKbgI6tBrCqE4wDprUN2hNwJek2F0F2ocLY'

Heroku URL: https://infinite-island-88911.herokuapp.com/

Heroku last deployment log:
```
-----> Building on the Heroku-20 stack
-----> Using buildpack: heroku/ruby
-----> Ruby app detected
-----> Installing bundler 2.2.16
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-2.7.3
-----> Installing dependencies using bundler 2.2.16
       Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin BUNDLE_DEPLOYMENT=1 bundle install -j4
       Fetching gem metadata from https://rubygems.org/............
       Using rake 13.0.3
       Using concurrent-ruby 1.1.9
       Using minitest 5.14.4
       Using thread_safe 0.3.6
       Using builder 3.2.4
       Using erubi 1.10.0
       Using racc 1.5.2
       Using crass 1.0.6
       Using rack 2.2.3
       Using nio4r 2.5.7
       Using websocket-extensions 0.1.5
       Using mini_mime 1.1.0
       Using arel 9.0.0
       Using marcel 1.0.1
       Using public_suffix 4.0.6
       Using execjs 2.8.1
       Using bcrypt 3.1.16
       Using msgpack 1.4.2
       Using ffi 1.15.3
       Using bundler 2.2.16
       Using mini_magick 4.11.0
       Using ssrf_filter 1.0.7
       Using coffee-script-source 1.12.2
       Using method_source 1.0.0
       Using thor 1.1.0
       Fetching unf_ext 0.0.7.7
       Fetching http-accept 1.7.0
       Using json 2.5.1
       Fetching mime-types-data 3.2021.0225
       Fetching netrc 0.11.0
       Installing netrc 0.11.0
       Installing http-accept 1.7.0
       Installing mime-types-data 3.2021.0225
       Using pg 1.2.3
       Using puma 3.12.6
       Using rb-fsevent 0.11.0
       Using tilt 2.0.10
       Using turbolinks-source 5.2.0
       Using i18n 1.8.10
       Using tzinfo 1.2.9
       Using nokogiri 1.11.7 (x86_64-linux)
       Using websocket-driver 0.7.5
       Using mail 2.7.1
       Using addressable 2.7.0
       Using autoprefixer-rails 10.2.5.1
       Using bootsnap 1.7.5
       Using sassc 2.4.0
       Using ruby-vips 2.1.2
       Using coffee-script 2.4.1
       Using rb-inotify 0.10.1
       Using uglifier 4.2.0
       Using rack-test 1.1.0
       Using sprockets 3.7.2
       Using turbolinks 5.2.1
       Using activesupport 5.2.6
       Using bootstrap-sass 3.4.1
       Using image_processing 1.12.1
       Using loofah 2.10.0
       Using rails-dom-testing 2.0.3
       Using globalid 0.4.2
       Using activemodel 5.2.6
       Using jbuilder 2.11.2
       Using sass-listen 4.0.0
       Using rails-html-sanitizer 1.3.0
       Using actionview 5.2.6
       Using activejob 5.2.6
       Using activerecord 5.2.6
       Using carrierwave 2.2.2
       Installing unf_ext 0.0.7.7 with native extensions
       Using actionpack 5.2.6
       Using sass 3.7.4
       Using actioncable 5.2.6
       Using actionmailer 5.2.6
       Using activestorage 5.2.6
       Using railties 5.2.6
       Using sprockets-rails 3.2.2
       Using coffee-rails 4.2.2
       Using jquery-rails 4.4.0
       Using font-awesome-rails 4.7.0.7
       Using rails 5.2.6
       Using sass-rails 5.1.0
       Fetching mime-types 3.3.1
       Installing mime-types 3.3.1
       Fetching unf 0.1.4
       Installing unf 0.1.4
       Fetching domain_name 0.5.20190701
       Installing domain_name 0.5.20190701
       Fetching http-cookie 1.0.4
       Installing http-cookie 1.0.4
       Fetching rest-client 2.1.0
       Installing rest-client 2.1.0
       Bundle complete! 27 Gemfile dependencies, 82 gems now installed.
       Gems in the groups 'development' and 'test' were not installed.
       Bundled gems are installed into `./vendor/bundle`
       Bundle completed (6.46s)
       Cleaning up the bundler cache.
-----> Installing node-v12.16.2-linux-x64
-----> Detecting rake tasks
-----> Preparing app for Rails asset pipeline
       Running: rake assets:precompile
       D, [2021-06-17T12:44:12.113034 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.121561 #431] DEBUG -- :   Question Exists (0.7ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 646], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.134879 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.140789 #431] DEBUG -- :    (5.6ms)  BEGIN
       D, [2021-06-17T12:44:12.141858 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 702], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.142991 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.143751 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.144704 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 682], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.145792 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.146537 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.147514 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 740], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.148589 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.149336 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.150301 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 690], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.151437 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.152187 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.153176 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 649], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.154251 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.154977 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.156144 #431] DEBUG -- :   Question Exists (0.8ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 667], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.157222 #431] DEBUG -- :    (0.4ms)  ROLLBACK
       D, [2021-06-17T12:44:12.157967 #431] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:12.158919 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 1081], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.160899 #431] DEBUG -- :    (1.4ms)  ROLLBACK
       D, [2021-06-17T12:44:12.161712 #431] DEBUG -- :    (0.5ms)  BEGIN
       D, [2021-06-17T12:44:12.162635 #431] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 721], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.163772 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.164592 #431] DEBUG -- :    (0.5ms)  BEGIN
       D, [2021-06-17T12:44:12.165726 #431] DEBUG -- :   Question Exists (0.8ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 705], ["LIMIT", 1]]
       D, [2021-06-17T12:44:12.166811 #431] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:12.167954 #431] DEBUG -- :    (0.8ms)  SELECT COUNT(*) FROM "questions"
       Loaded
        Questions from JSON
       D, [2021-06-17T12:44:12.168993 #431] DEBUG -- :    (0.7ms)  SELECT COUNT(*) FROM "questions"
       Loaded
        Questions from JSON
       Yarn executable was not detected in the system.
       Download Yarn at https://yarnpkg.com/en/docs/install
       Asset precompilation completed (2.00s)
       Cleaning assets
       Running: rake assets:clean
       D, [2021-06-17T12:44:13.890914 #437] DEBUG -- :    (0.9ms)  BEGIN
       D, [2021-06-17T12:44:13.894895 #437] DEBUG -- :   Question Exists (0.9ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 646], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.897679 #437] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:13.898820 #437] DEBUG -- :    (0.8ms)  BEGIN
       D, [2021-06-17T12:44:13.899827 #437] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 702], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.900902 #437] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:13.901624 #437] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:13.902518 #437] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 682], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.903586 #437] DEBUG -- :    (0.4ms)  ROLLBACK
       D, [2021-06-17T12:44:13.904445 #437] DEBUG -- :    (0.6ms)  BEGIN
       D, [2021-06-17T12:44:13.905358 #437] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 740], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.906383 #437] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:13.909017 #437] DEBUG -- :    (2.4ms)  BEGIN
       D, [2021-06-17T12:44:13.909889 #437] DEBUG -- :   Question Exists (0.5ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 690], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.910939 #437] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:13.911685 #437] DEBUG -- :    (0.5ms)  BEGIN
       D, [2021-06-17T12:44:13.912731 #437] DEBUG -- :   Question Exists (0.7ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 649], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.913800 #437] DEBUG -- :    (0.5ms)  ROLLBACK
       D, [2021-06-17T12:44:13.914515 #437] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:13.916318 #437] DEBUG -- :   Question Exists (1.4ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 667], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.918028 #437] DEBUG -- :    (1.1ms)  ROLLBACK
       D, [2021-06-17T12:44:13.918768 #437] DEBUG -- :    (0.5ms)  BEGIN
       D, [2021-06-17T12:44:13.919740 #437] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 1081], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.920970 #437] DEBUG -- :    (0.6ms)  ROLLBACK
       D, [2021-06-17T12:44:13.921715 #437] DEBUG -- :    (0.5ms)  BEGIN
       D, [2021-06-17T12:44:13.922719 #437] DEBUG -- :   Question Exists (0.6ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 721], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.923746 #437] DEBUG -- :    (0.4ms)  ROLLBACK
       D, [2021-06-17T12:44:13.924471 #437] DEBUG -- :    (0.4ms)  BEGIN
       D, [2021-06-17T12:44:13.925870 #437] DEBUG -- :   Question Exists (1.0ms)  SELECT  1 AS one FROM "questions" WHERE "questions"."question_id" = $1 LIMIT $2  [["question_id", 705], ["LIMIT", 1]]
       D, [2021-06-17T12:44:13.927131 #437] DEBUG -- :    (0.7ms)  ROLLBACK
       D, [2021-06-17T12:44:13.928222 #437] DEBUG -- :    (0.7ms)  SELECT COUNT(*) FROM "questions"
       Loaded
        Questions from JSON
       D, [2021-06-17T12:44:13.929123 #437] DEBUG -- :    (0.6ms)  SELECT COUNT(*) FROM "questions"
       Loaded
        Questions from JSON
-----> Detecting rails configuration
###### WARNING:
       No Procfile detected, using the default web server.
       We recommend explicitly declaring how to boot your server process via a Procfile.
       https://devcenter.heroku.com/articles/ruby-default-web-server
-----> Discovering process types
       Procfile declares types     -> (none)
       Default types for buildpack -> console, rake, web
-----> Compressing...
       Done: 83.1M
-----> Launching...
       Released v12
       https://infinite-island-88911.herokuapp.com/ deployed to Heroku
```