# Contador_FPGA
FPGA Intel DE10-Lite: Contador automático y manual, con reset, enable y contador decreciente automático
Gael Cumplido Mendoza - A01029238

📌 Descripción

Este proyecto implementa en una FPGA un contador con diversas funciones controladas por switches. Para generar pulsos de un segundo, se utiliza un módulo que divide la frecuencia del reloj principal (por ejemplo, 50 MHz). El contador puede incrementarse o decrementarse según un switch de dirección, mientras que un switch de habilitación permite pausar o continuar el conteo. Se emplea un módulo debouncer para filtrar los rebotes del switch de reset, que reinicia el contador al valor inicial. Además, se incluye un modo manual que, al activarse junto con el reset, permite fijar un valor de 4 bits mediante cuatro switches adicionales y mostrarlo en un display de 7 segmentos. Un módulo BCD se encarga de traducir la salida del contador (automático o manual) a la representación adecuada para el display, logrando así un sistema de conteo versátil.

Con este proyecto se ilustra cómo manejar entradas digitales (los switches),  demuestra el flujo de trabajo con Quartus y Verilog, desde la descripción de hardware hasta la implementación en la FPGA.

⚙️ Requisitos

Quartus Prime (Intel FPGA)

FPGA compatible (Ejemplo: Cyclone IV, MAX10), En este proyecto se utilizó FPGA Intel DE10-Lite

Cable de programación JTAG

📂 Estructura del Proyecto

/Contador

│── top_contador.v # Modulo principal que implementa todos los modulos

│── BCD.v # Modulo que convierte de binario a decimal

│── BCD_tb.v # Testbench para simulación

│── decoder.v # Modulo para el display de 7 segmentos

│── debouncer.v # Modulo que ayuda a controlar el ruido de las señales de los switches

│── counter_debouncer.v # Modulo que ayuda a controlar el ruido de las señales de los switches

│── contador.v #Modulo que implementa la logica de un contador que crece y decrece

│── clkdiv.v #Modulo que ayuda en la conversion de los ciclos de reloj para asegurar un ciclo de un segundo

│── clkdiv_tb.sv # Testbench para simulación

│── contador_manual.v #Modulo que implemetna la logica para la activacion del segmento del contador manual

│── Contador.qpf # Archivo del proyecto en Quartus

│── Contador.qsf # Archivo de configuración del FPGA

│── README.md # Este archivo
