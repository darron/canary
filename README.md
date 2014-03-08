# Canary

Simple web app to notify you anytime somebody hits any page below `/hit/`

## Purpose

I needed to know exactly when a particular URL was hit to test out a timed 'keepalive' system.

This seemed the simplest way to do it and to add different URLs as needed without any configuration.

## Heroku environment variables

These are needed to operate on Heroku:

```
SESSION_SECRET="output of: padrino rake secret"
EMAIL_DESTINATION="email@example.com"
BASE_CANARY_PATH="pathname"
SENDGRID_USERNAME
SENDGRID_PASSWORD
DATABASE_URL
```
