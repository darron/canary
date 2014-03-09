# Canary

Simple web app to notify you via email or push notification anytime somebody hits a specific page.

## Purpose

I needed to know exactly when a particular URL was hit to test out a timed 'keepalive' system.

This seemed the simplest way to do it and to add different URLs as needed without any configuration.

## Usage

When this is live, you can use a URL as a notification system:

```
http://website.address.example.com/hit/trythis
http://website.address.example.com/hit/and-this-as-well
```

Anytime one of those urls is hit, `EMAIL_DESTINATION` will get an email. Any posted data will be included in the email.

## Heroku environment variables

These are needed to operate on Heroku:

```
SESSION_SECRET # output of: padrino rake secret
EMAIL_DESTINATION="email@example.com"
BASE_CANARY_PATH="hit" # or change it to something else.
SENDGRID_USERNAME # heroku addons:add sendgrid:starter
SENDGRID_PASSWORD
STOP_ALL_EMAIL # Set this and all email stops being sent.
```

## Push notifications

To get the simplest possible push notifications - download the [Boxcar app](https://boxcar.io/client) and use the bxc.io email address you get with it.

Change EMAIL_DESTINATION to it and you're good to go.

## Todo

1. Add ability to notify a different email address on the fly: '/BASE_CANARY_PATH/path/email@example.com' - possibly very dangerous - need to secure so it doesn't become a spam fest.
2. If `/hit/page.{gif,jpg,png,js}` is requested, then return proper type of file with proper headers.
3. Only email every INTERVAL seconds - protects from email flood/DoS.
4. Keep count of hits from page-IP combo. (Maybe something simple like Redis.)
5. Get some more IP data - location related.
