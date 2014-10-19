#!/bin/bash
for i in `seq 1 100`; do rails generate migration SwitchDateMeetToEvent$i datemeet$i:DateTime; done