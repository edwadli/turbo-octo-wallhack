#!/bin/bash
for i in `seq 1 100`; do rails generate migration AddDateMeet$iToEvent datemeet$i:string; done