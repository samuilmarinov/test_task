## Test task
- Laravel 7
- php 7.4

Run locally:
(vendors folder not included so you'll have to run `composer` to test locally)
-  `composer install`
-  `php artisan serve`
-  `http://localhost:8000`

Demo page:
https://samuilmarinovdev2.co.uk

`Create` endpoint for application (only for local testing /api/application/create/)
used by the form on the homepage to create an application
- select user
- select charity
- select stage

`Move` endpoint for application
can be called directly (I've left it accessible over http so you can test with postman)

You can test by calling the following endpoint with a respective application ID
http://samuilmarinovdev2.co.uk/api/application/move/{$id}

Trying to update an application that doesn't match the allowed criteria triggers a 
response prompting you to check the Charity status and details.

`Gate`
dummy gate - admin check
`app -> providers -> AuthServiceProvider.php`

check for `Move` update conditions
line 100 - `app -> http -> controllers -> ApiController.php`
only key to test with `PUT` request is `stage_id` values from 1 to 3

`SQL` in the root folder of the repo:
`Database.sql`

Ta..