# Raspibolt-Router-Restart
Powers off/on a router in case my Bitcoin/LND Full node looses internet connection.

Running a Bitcoin/LND Full Node remotely and connect via VPN to intreract with the node. So far I lost internet connection at this remote location twice and there is no remote-hands-service (simple setup with off-the-shelf router).

Now I installed a EnerGenie Programmable surge protector with LAN interface (EG-PMS2-LAN). This power strip is connected to 
the RaspiBolt and regularly checks for an available internet connection (via cronjob). 
