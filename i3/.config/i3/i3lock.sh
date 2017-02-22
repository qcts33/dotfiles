#!/bin/bash
#
# Dependencies: imagemagick, i3lock
#
# A script that takes current screenshot and blurs it to be
# used with i3lock
#
# Copyright © 2016 Bharadwaj Machiraju <tunnelshade at gmail dot com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
sleep 0.1
scrot /tmp/screen_locked.png
sleep 0.1
convert /tmp/screen_locked.png -blur 4x4 /tmp/screen_locked2.png
sleep 0.1
# convert /tmp/screen_locked.png -spread 10 /tmp/screen_locked2.png
i3lock -e -i /tmp/screen_locked2.png
