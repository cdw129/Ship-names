#!/usr/bin/perl -w
use strict;
use lib "$ENV{HOME}/bin", "."; # ... to find...
require 'parser.pl';
######################################################################
# Configure the Eastern Front Ships on a server.
# (C) 2015-2018 Nosey Nick Waterman,
#   <perl@noseynick.org>   http://noseynick.net/artemis/
# All wrong righted, all rights reserved. Licensed under thev GNU
# Affero General Public License v3.0 https://www.gnu.org/licenses/agpl.txt
# with Commons Clause https://commonsclause.com/ v1.0
######################################################################
# Run like:  ./EFShips.pl | nc -q1 127.1 2010 | ./parser.pl
# (replace 127.1 with the address of your server)
######################################################################
# Util functions for SingleSeat craft (fighters, bombers, shuttles):
*TSNMedium = SSConf(qw(100 player singleseat fighter));
*TSNBomber = SSConf(qw(101 player singleseat fighter));
*TSNShuttle = SSConf(qw(102 player singleseat shuttle));
*TSNLRShuttle = SSConf(qw(103 player singleseat shuttle));
######################################################################
# ShipConf(drivetype(0=warp,1=jump), shiptype (from vesselData.xml), colour (0.0-1.0), "name",
#   AvengerBomber("name")
#   AdventureShuttle("name")
#   StalkerFighter("name")
# );

ShipConf(0, 19, 0,     "TSN Sabre",  # Warp Ares Class
);
ShipConf(0, 20, 0.125, "TSN Horizon", # Warp Valkyrie Class

);
ShipConf(0, 21, 0.25,  "TSN Viper", # Warp Apollo Class

);
ShipConf(0, 17, 0.641, "TSN Lancer",    # Warp Nemesis Class
);

ShipConf(0, 0, 0.5,   "TSN Hunter",    # Warp Artemis Class
);
ShipConf(0, 0, 0.675, "TSN Valiant",          # Warp Artemis Class
);
ShipConf(0, 0, 0.75,  "TSN Excalibur",          # Warp Artemis Class
);
ShipConf(0, 0, 0.875, "TSN Eagle",          # Warp Artemis Class
);

######################################################################