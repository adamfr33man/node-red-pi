# node-red-pi

An easy way to get up and running with Node-Red on the Raspberry Pi

## Why this ?

I was looking into thethingbox but found a few things too limiting for my liking. Hopefully they can address these soon.

  * It didn't out of the box when using WiFi
  * Installing plugins was a pain because it was not setup like a regular Node-Red server
  * It had too mny plugins out of the box for my liking
  * Could not be added to an exisitng Pi image

## Usage

This should be as easy as running:
```
sudo ./install.sh
```

This will also make Node-Red and Mosca run on startup, you can stop/start restart them using:
```
node-red
```

To run Mosca with websockets enabled do this

```
mosca -v --http-port 3000 --http-bundle --http-static ./ | bunyan
```

It takes a little while to install all the dependancies through npm, but if you are doing this alot then you could image a built version and use that

## What does it include

  * Node 0.12.6 or later
  * Node-Red Latest
  * Mosca - a MQTT Broker
  * Bunyan - Pretty logging from Mosca
  * Freeboard - A realtime dashboard plugin

## Todo

  * Get this to log files
  * Get it to startup on boot
