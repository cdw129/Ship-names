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
*AvengerBomber    = SSConf(qw(130 Pirate player singleseat fighter)); # yeah honestly
*AdventureShuttle = SSConf(qw(131 Pirate player singleseat shuttle));
*StalkerFighter   = SSConf(qw(132 Pirate player singleseat fighter));
######################################################################
# ShipConf(drivetype(0=warp,1=jump), shiptype (from vesselData.xml), colour (0.0-1.0), "name",
#   AvengerBomber("name")
#   AdventureShuttle("name")
#   StalkerFighter("name")
# );

ShipConf(0, 4, 0,     "PVTR Jimi-Saru",  # Warp Advanced Longbow
);
ShipConf(0, 2, 0.125, "PVTR Fulminatae", # Warp Brigantine
    AdventureShuttle("S01"),
    StalkerFighter("F01"),
    StalkerFighter("F02"),
    AvengerBomber("B01"),
    AvengerBomber("B02"),
    AvengerBomber("B03"),
);
ShipConf(0, 3, 0.25,  "PVTR Apocalypse", # Warp Tornado
    AdventureShuttle("S01"),
    StalkerFighter("F01"),
);
ShipConf(0, 7, 0.375, "TSN Academia",    # Warp Light Cruiser
);

ShipConf(0, 7, 0.5,   "Ship 5",          # Warp Light Cruiser
);
ShipConf(0, 7, 0.625, "Ship 6",          # Warp Light Cruiser
);
ShipConf(0, 7, 0.75,  "Ship 7",          # Warp Light Cruiser
);
ShipConf(0, 7, 0.875, "Ship 8",          # Warp Light Cruiser
);

######################################################################