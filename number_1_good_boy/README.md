# PCB file to make an LED chaser doggo tag for any number 1 good doggo.
## Below is what the final product ended up looking like.

![number_1_good_boy_demo](number_1_good_boy.gif)

One day my number 1 good boy through no fault of his own lost all of his dog tags. So naturally instead of simply buying him a new dog tag at minimal cost and effort, I decided to make a special dog tag for my special boy so that everyone would now just how special he is. I mean just look at how cute he is...

![The good boy himself](good_boy.gif)

Or in the sand.
![He is so cute!](desert_good_boy.jpg)

Anyway... I wanted some blinking LEDs and after a bit of googling ended up deciding on an LED chaser circuit e.g. [Nuts and Volts](https://www.nutsvolts.com/magazine/article/led-chaser-sequencer-circuits) or [Electro Schematics](https://www.electroschematics.com/led-chaser/).

Then I set out to design this circuit in KiCAD (my favorite PCB design software). 
Before designing even the schematic though I decided on what ICs I was going to use. Basically I new that I wanted to try JLCPCBs SMT assembly service. Mostly becuase an SMD versus a through hole PCB would just look slicker in my opinion and it was a good oppurtunity to learn how to do. JLCPCB also is very affordable which made such a project possible with a modest budget (still not the cheapest dog tag in the end). So I picked out a 555 timer and a CMOS decade counter that are in JLCPCB SMT [library](https://jlcpcb.com/parts) and in stock. In particular [NE555](http://www.ti.com/lit/ds/symlink/ne555.pdf) and [CD4017BM96](https://datasheet.lcsc.com/szlcsc/1809042113_Texas-Instruments-CD4017BM96_C11349.pdf). The CD4017BM96 stated it would work down to 3V which was what I need to run the LED chaser off a battery. Likewise I found the LED with a mininum voltage less that 3V [NCD0603W3](https://datasheet.lcsc.com/szlcsc/2008201033_Foshan-NationStar-Optoelectronics-NCD0603W3_C158100.pdf). I wired up the 555 timer in astable operation as shown in page 11 of the data sheet. You set the rate of the LED chaser by setting the values of the RA RB and C. I used an online calculator (e.g. [Calculator](https://www.xarg.org/tools/ne555-astable-circuit-calculator/) and chose values to obtain a rate of 6 Hz. I wired the output of the 555 timer into the clock input of the CD4017
B. Then just added an LED to each of the output pins of the CD4017B. Since the battery will just supply 3V there was no need for any current limiting resistors in series with the LEDs. Then I just added a [switch](https://lcsc.com/product-detail/New-Arrivals_XKB-Enterprise-SK-3296S-01-L2_C500051.html) and battery into the circuit. For the battery I just chose an SMD part that was already in the KiCAD footprint library. JLCPCB didn't stock it but the battery needed to go on the back anyway and JLCPCB only does SMD assemble on one side. Below is the resultant schematic. 

![Schematic](number_1_good_boy.pdf)

There are good tutorials already out there on how to use KiCAD [check out SparkFun's](https://learn.sparkfun.com/tutorials/beginners-guide-to-kicad) so I wont go into too much detail on that part of the project. However when assigning footprints KiCAD had all of the footprints I needed for my SMD components with the exception of the [switch](https://lcsc.com/product-detail/New-Arrivals_XKB-Enterprise-SK-3296S-01-L2_C500051.html). So I had to draw up a new foot print for that part. You can find in this same repository [here](https://github.com/Wheeler1711/kicad/tree/main/my_footprints/switch.pretty). 

My good boy needed a new tag soon so that he didn't wander off and get lost, so I didn't spend to much time making the prettiest PCB or fanciest design. Your version two could be in the shape of a dog bone. I did a bit of quick math to place the LEDs evenly around the circle and wired everything up. Below is the 3D rendering from KiCAD minus the switch which I didn't bother making a 3D model for.  

I used the instructions [here](https://support.jlcpcb.com/article/84-how-to-generate-the-bom-and-centroid-file-from-kicad) to create the BOM and position file needed for the JLCPCB software to do the SMD assembly. After uploading the files to JLCPCB's website thier preview showed that the IC's rotation angles were off by 90 degrees so I just manually edited the csv and re-uploaded. The version in this repository is the corrected version. 

If you want to make one for your self just download the project. Open the PCB design in PCBnew and changed the text on the silk screen to have your doggo's name and numbers. Then go to File->Plot. Change the Plot format to Gerber. Then hit Plot. Also click generate drill files and then click Generate Drill File. Then you just need to zip all of the .gbr adn .drl files and upload that file through JLCPCBs website. Then when prompted upload the BOM and top-pos.csv file. JLCPCB website gives you previews of the board and the SMT parts so you should notice if something is amiss.
