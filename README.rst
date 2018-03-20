******************************************************************************
              FogLAMP South MAX31865 Async mode Plugin
******************************************************************************

This directory contains a plugin that receives readings from MAX31865
sensor amplifiers connected to PT100 temperature probes. The readings are 
received for Temperature from each probe.

Requirements:
sudo pip3 install RPi.GPIO 

=============
Since the plugin runs in a separate process and its shutdown is controlled by the
central FogLAMP server, pressing CTRL-C does not terminate the process properly.


