//i numeri che identificano lo slider sono: valore iniziale(corrisponde al valore numerico che deve assumere l'interfaccia grafica nel momento  in cui si accende il programma. E può esssere un numero qualsiasi tra il valore minimo e il massimo), valore minimo, valore massimo e step incrementale. lo step incrementale è la precisoone del passaggio da un valore e l'altro.
import("stdfaust.lib");
gain = vslider("gain", 0, 0, 1, 0.1);
process = no.noise : fi.bandpass(10, 1000, 2000) : *(gain);
//pomelli per le bande e i controlli di bandpass
