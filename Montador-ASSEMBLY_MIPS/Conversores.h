#ifndef CONVERSORES_H
#define CONVERSORES_H
#include <stdio.h>
char* Or_Bits_finais(int i);
char* dec2bin(int d);
char* Somador_binario(char* num1,char* num2);
char* Complemento2(char *Num);
void Fprintf_registrador(char* Reg, FILE* saida);
char* Or_Bits_SLL_SRL(int i);
#endif
