# Decibmeter

This app is used to capture decibel level from a mic, and log the level with the date of capture inside a text file.
Then a web app developped in VueJS will display the logs information.


## Script to capture decibel level

To run the listen.sh script, please verify first that you have installed :

```bash
    sudo apt-get install alsa-utils
    sudo apt-get install sox
```

Then run the following command :

```bash
    ./listen.sh
```

## Run the web app

First, install all the packages with

```bash

npm install --legacy-peer-deps

```

Then run :

```bash
    npm run build
    npm run serve
```