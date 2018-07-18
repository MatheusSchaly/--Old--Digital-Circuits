# Digital-Circuits
Half Adder, Full Adder, Multiplexer, Encoder, Decoder, Flip Flop, Latch, Register, FSM and Mini-Calculator project.

Every small circuit at the <b> Small Circuits </b> folder has the <b> VHDL </b> commands to create the circuit as well as two txt files, one containing the circuit <b> Truth Table </b>, and another containing a <b> Script </b>.
To use the Script file -> Open the QPF file that you want (Half_Adder for example) -> Click on RTL Simulation to open ModelSim -> (Inside ModelSim) -> Library -> Work -> half_adder -> Drag the Objects to the Wave -> Copy the Script from Script file -> Paste it on ModelSim’s Transcript tab -> Run (F9).
That will create waves to represent a truth table, which you can follow along the Truth Table txt file as well as the VHDL within the QPF file.

The <b> Mini-Calculator </b> folder is more confusing to understand, since I didn’t try to organize it as good as the Small Circuits folder. Nevertheless, if you check the folder <u> Slides UFSC Circuitos Digitais </u>, you’ll find a pretty descent way to construct your own calculator, and you can compare it with the calculator that I’ve built. For example, the <i> file Script for SUM operation of the calculator </i> inside <i> Aula 8 </i> folder can make it easier to understand what is going on. But those notes were designed for me to remember, so it may be difficult for you to understand. Anyway, by building the Mini-Calculator you can get a good grasp about each of those Digital Circuits mentioned at the beginning: Half Adder, Full Adder, Decoder, FSM...

By the way I'm only a student, so don't rely too much on the this repository. That was me learning how to work with VHDL, Quartus, Waveform and ModelSim. I also appreciate any suggestions.

Credits to Prof. Héctor Pettenghi Roldán and Prof. Eduardo Bezerra who made available the slides to build the Mini-Calculator. And thanks to github.com/GSimas for sharing his own calculator.
