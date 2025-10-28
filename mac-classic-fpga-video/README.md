# Macintosh Classic Logic board replacement

The logic board of a Macintosh Classic will be replaced by a Raspberry Pi 5, and the GPU will be replaced by an FPGA. 

## The FPGA

The FPGA will recieve the video signal from the Raspberry Pi 5's DPI interface and convert it to an appropriate signal for the analog board that is connected to the CRT.

The FPGA we have now for prototyping is a Terasic DE0-CV. Later on we will replace it with something small and cheap, perhaps a Pico-Ice.

## The Raspberry Pi 5

The Raspberry Pi 5 will be used to control the FPGA. We will keep the graphics close to the original but install an AI on the Raspberry Pi that the user can speak to through an old analog "Cobra" telephone

## The Analog Board

The analog board will be used to convert the video signal from the FPGA to an appropriate signal for the CRT. The voltage levels are very high and would be hard to replace. 

We are not sure about the audio.

## The CRT

The CRT will be used to display the video signal from the analog board.

## First step:

Get a test image on the CRT using only the FPGA and the analog board.

## Tests

The CRT is confirmed to be working on one of the two machines we have. We have done a quick test with the Raspberry Pi and been able to display an image on the CRT via DPI.

## Links

Developer notes för Classic och Classic II: 
https://bobparadiso.com/wp-content/uploads/2014/09/mac_classic.pdf
https://bobparadiso.com/wp-content/uploads/2014/09/mac_classic_ii.pdf
Exempel på FPGA/Classic:
https://bobparadiso.com/2014/09/04/fpga-macintosh-classic-display/
https://bobparadiso.com/2014/10/17/macintosh-classic-photo-booth/

https://en.wikipedia.org/wiki/Macintosh_Classic_II
https://support.apple.com/en-us/112201

https://en.wikipedia.org/wiki/Macintosh_Classic
https://everymac.com/systems/apple/mac_classic/specs/mac_classic.html
support.apple.com/en-us/112195

https://www.hackster.io/news/revive-your-old-macintosh-classic-with-a-raspberry-pi-0e679f8bd168
https://www.instructables.com/Turn-a-Broken-Mac-Classic-Into-a-Modern-day-Raspbe/