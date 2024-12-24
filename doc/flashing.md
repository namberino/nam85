# Flashing code

The nam85 has a UART receiver. It's also coupled with a bootloader. Bootloader should be started whenever the uC is reset or is powered up. When the UART receiver receives something, it should write the data into the memory (Address: 0x0) and reset the entire uC. Effectively rebooting and running the new code. If the bootloader doesn't have to load code into memory, it should jump to the program's section in memory and start execution of the code.
