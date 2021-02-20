# PCB file to make an LED chaser doggo tag for any number 1 good doggo.
## Below is what the final product ended up looking like.

![number_1_good_boy_demo](number_1_good_boy.gif)

One day my number 1 good boy through no fault of his own lost all of his dog tags. So naturally instead of simply buying him a new dog tag at minimal cost and effort, I decided to make a special dog tag for my special boy so that everyone would now just how special he is. 

I wanted some blinking LEDs and after a bit of google ended up deciding on an LED chaser circuit e.g. [Nuts and Volts](https://www.nutsvolts.com/magazine/article/led-chaser-sequencer-circuits) or [Electro Schematics](https://www.electroschematics.com/led-chaser/).

Then I set out to design this circuit in KiCAD (my favorite PCB design software). 
Before designing even the schematic though I decided on what ICs I was going to use. Basically I new that I wanted to try JLCPCBs SMT assembly service. Mostly becuase an SMD versus a through hole PCB would just look slicker in my opinion and it was a good oppurtunity to learn how to do. JLCPCB also is very affordable which made such a project possible with a modest budget (still not the cheapest dog tag in the end). So I picked out a 555 timer and a CMOS decade counter that are in JLCPCB SMT library and in stock. In particular [NE555](http://www.ti.com/lit/ds/symlink/ne555.pdf) and [CD4017BM96](https://datasheet.lcsc.com/szlcsc/1809042113_Texas-Instruments-CD4017BM96_C11349.pdf). The CD4017BM96 stated it would work down to 3V which was what I need to run the LED chaser off a battery. Likewise I found the LED with a mininum voltage less that 3V [NCD0603W3](https://datasheet.lcsc.com/szlcsc/2008201033_Foshan-NationStar-Optoelectronics-NCD0603W3_C158100.pdf). I wired up the 555 timer in astable operation as shown in page 11 of the data sheet. You set the rate of the LED chaser by setting the values of the RA RB and C. I used an online calculator eg... and chose values to obtain a rate of 6 Hz.
