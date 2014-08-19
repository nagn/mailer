Mailer
======
Mailer is a simple app that forwards the metadata in QR codes on Yale public cluster machines to cluster support.

Dependencies
------------
None.

Creating QR Codes
------------
QR codes are generated from URL query appended urls of this app. Right now it is configured to be hosted locally, and must be reconfigured to Yale's ITs server enviornment.

Currently the way to structure the QR code is to append a url query for the parameters "label" and "tag_type." For example if we are printing a QR code for the computer STC-004, then we would construct the url as follows:

http://localhost:3000/reports/new?label=STC-004&tag_type=computer

with of course the localhost adjusted to the proper local domain. The current available options for tag_type are as follows


  * no_label
  * station
  * computer

usually you will create QR codes for either stations or computers. no_label is the default value entered in the hidden field "tag_type" for the new view. 

The generated url can then be passed through any QR converting app and then printed for use.
