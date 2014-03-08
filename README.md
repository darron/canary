# Canary

Simple web app to notify you via email anytime somebody hits a specific page.

## Purpose

I needed to know exactly when a particular URL was hit to test out a timed 'keepalive' system.

This seemed the simplest way to do it and to add different URLs as needed without any configuration.

## Usage

When this is live, you can use a URL as a notification system:

```
http://website.address.example.com/hit/trythis
http://website.address.example.com/hit/and-this-as-well
```

Anytime one of those urls is hit, `EMAIL_DESTINATION` will get an email.

## Heroku environment variables

These are needed to operate on Heroku:

```
SESSION_SECRET # output of: padrino rake secret
EMAIL_DESTINATION="email@example.com"
BASE_CANARY_PATH="hit" # or change it to something else.
SENDGRID_USERNAME # heroku addons:add sendgrid:starter
SENDGRID_PASSWORD
DATABASE_URL
```
