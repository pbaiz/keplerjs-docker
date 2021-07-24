# keplerjs-docker

Docker image for [KeplerJs](https://keplerjs.io/)

# Docker hub

https://hub.docker.com/r/keplerjs/kepler

# Setup

```bash
cp kepler.example.env kepler.env
```
and edit ```kepler.env``` with your secrets api keys

edit ```settings.json``` for customizations

# Start

```bash
docker-compose up kepler
```

## Environment Vars

```
GEOINFO_GEONAMES_USER=
GEOINFO_IPINFODB_KEY=
WEATHER_WUNDERGROUND_KEY=
OPENROUTESERVICE_NAME=
OPENROUTESERVICE_KEY=
ACCOUNTS_EMAILTEMPLATES_FROM=
ACCOUNTS_GITHUB_CLIENTID=
ACCOUNTS_GITHUB_SECRET=
ACCOUNTS_FACEBOOK_APPID=
ACCOUNTS_FACEBOOK_SECRET=
ACCOUNTS_GOOGLE_CLIENTID=
ACCOUNTS_GOOGLE_SECRET=
ACCOUNTS_TWITTER_CONSUMERKEY=
ACCOUNTS_TWITTER_SECRET=
ACCOUNTS_OPENSTREETMAP_CONSUMERKEY=
ACCOUNTS_OPENSTREETMAP_SECRET=
GA_ID=
```
