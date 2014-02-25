Blockface photography scripts
=============================

A set of scripts for capturing the photos of the face of the cutting block
during cryosectioning.

Dependencies
------------

 * gphoto2 (http://www.gphoto.org/)
 * geeqie (http://geeqie.sourceforge.net/)


Installation
------------

  * Install dependencies and clone the repository from githib

    sudo apt-get install gphoto2 geeqie
    mkdir -p ~/blockface_photos && cd ~/blockface_photos
    git clone https://github.com/pmajka/blockface_photography_scripts.git .


Usage
-----

 * Start new session and enter required data (edit the `session_config.sh`
   file),
 * Collect each photo with `./grab`,
 * Enjoy.


Author
------
Piotr Majka <pmajka@nencki.gov.pl>
