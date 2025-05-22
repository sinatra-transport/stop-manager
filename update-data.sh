#!/usr/bin/env bash
mkdir -p tmp data
wget https://www.transport.act.gov.au/googletransit/google_transit.zip -O tmp/google_transit.zip
wget https://www.transport.act.gov.au/googletransit/google_transit_lr.zip -O tmp/google_transit_lr.zip

unzip tmp/google_transit.zip -d tmp/google_transit
unzip tmp/google_transit_lr.zip -d tmp/google_transit_lr

mv tmp/google_transit/stops.txt data/bus_stops.txt
mv tmp/google_transit_lr/stops.txt data/lr_stops.txt

rm -r tmp