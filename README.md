# Raspibolt-Router-Restart
Powers off/on a router in case my Bitcoin/LND Full node looses internet connection.

Running a Bitcoin/LND Full Node remotely and connect via VPN to interact with the node. So far I lost internet connection at this remote location twice and there is no remote-hands-service (simple setup with off-the-shelf router).

Now I installed a EnerGenie Programmable surge protector with LAN interface (EG-PMS2-LAN). This power strip is connected to 
the RaspiBolt and regularly checks for an available internet connection (via cronjob).

In order to control the EngerGenie power strip via CLI in Linux, I utiliize the following tool: https://github.com/unterwulf/egctl

The "off-the-shelf router" is powered by the first port of the EnergGenie power strip. The RaspiBolt regularly checks for internet connection (ping Googles DNS Server at 8.8.8.8). If this ping fails five times in a row (10 minute break between each attempt) it will shut down the router by disconnecting it from power. 20 seconds later, the router is powered on again. A log file is being maintained.
