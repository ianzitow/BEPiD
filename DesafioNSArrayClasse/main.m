//
//  main.m
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/2/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDFuncionario.h"
#import "BEPiDEmpresa.h"

void print_func(NSMutableArray*, NSUInteger);
void assign_cars(NSArray *employees);
void presentear(NSArray *lista, NSNumber *anoAtual);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BEPiDEmpresa *empresa = [[BEPiDEmpresa alloc] init];
        [empresa setAnoAtual:2015];
        
        NSMutableArray *lista = [[NSMutableArray alloc] init];
        
        NSArray *nomes = [NSArray arrayWithObjects:
                          @"Marcos",
                          @"Pedro",
                          @"Tiago",
                          @"Maria",
                          @"Renata",
                          @"José",
                          @"Mateus",
                          @"Carolina",
                          @"Ivone",
                          @"Lucas",
                          nil];
        
        for (NSUInteger i = 0; i < 10; i++) {
            BEPiDFuncionario *funcionario = [[BEPiDFuncionario alloc] init];
            [funcionario setId:i];
            [funcionario setNome:[nomes objectAtIndex:i]];
            [funcionario setSalario:1625.35*(i+1)];
            [lista addObject:funcionario];
        }
        
        print_func(lista,0);
        print_func(lista,1);
        print_func(lista,2);
        print_func(lista,3);
        print_func(lista,4);
        print_func(lista,5);
        print_func(lista,6);
        print_func(lista,7);
        print_func(lista,8);
        print_func(lista,9);
        
        assign_cars(lista);
        
        for (NSUInteger i = 1; i < 10; i++) {
            BEPiDFuncionario *funcionario = [lista objectAtIndex:i];
            [funcionario aumentarSalarioDeFuncionario];
        }
        
        presentear(lista, [empresa anoAtual]);
        
        [empresa setFuncionarios:(NSArray*)lista];
        
    }
    return 0;
}

void print_func(NSMutableArray *lista, NSUInteger i) {
    NSLog(@"ID: %lu, Nome: %@, Salário: %.2f, Cargo: %@", (unsigned long)[(BEPiDFuncionario*)[lista objectAtIndex:i] idFunc], [(BEPiDFuncionario*)[lista objectAtIndex:i] nome], [[(BEPiDFuncionario*)[lista objectAtIndex:i] salario] floatValue], [(BEPiDFuncionario*)[lista objectAtIndex:i] cargo]);
}

void assign_cars(NSArray *employees) {
    NSArray *marcas = [NSArray arrayWithObjects:
                       @"Renault",
                       @"Peugeot",
                       @"Ford",
                       @"Hyundai",
                       @"BMW",
                       @"Chevrolet",
                       @"Fiat",
                       @"Subaru",
                       @"Mitsubshi",
                       @"Nissan",
                       nil];
    
    NSArray *modelos = [NSArray arrayWithObjects:
                        @"Sandero",
                        @"207",
                        @"Camaro",
                        @"ix35",
                        @"L200",
                        @"Optimus",
                        @"Palio",
                        @"Raza",
                        @"XS232",
                        @"Frontier",
                        nil];
    
    NSArray *placas = [NSArray arrayWithObjects:
                       @"ABC-8353",
                       @"DEF-3635",
                       @"GHI-8363",
                       @"JKL-7352",
                       @"MNO-0292",
                       @"PQR-7342",
                       @"STU-5242",
                       @"VXY-7352",
                       @"JHA-6335",
                       @"AMA-8321",
                       nil];
    
    NSArray *cores = [NSArray arrayWithObjects:
                      @"Verde Imperial",
                      @"Vermelho Ônix",
                      @"Branco Galático",
                      @"Azul Celestial",
                      @"Preto Colonial",
                      @"Marrom Curral",
                      @"Amarelo",
                      @"Carolina",
                      @"Ivone",
                      @"Lucas",
                      nil];
    
    for (NSUInteger i = 0; i < 10; i++) {
        BEPiDCarro *carro = [[BEPiDCarro alloc] init];
        [carro setMarca:[marcas objectAtIndex:i]];
        [carro setModelo:[modelos objectAtIndex:i]];
        [carro setPlaca:[placas objectAtIndex:i]];
        [carro setCor:[cores objectAtIndex:i]];
        [carro setAno:[NSNumber numberWithInt:2010]];
        
        BEPiDFuncionario *funcionario = (BEPiDFuncionario*)[employees objectAtIndex:i];
        [funcionario addCarro:carro];
    }
}

void presentear(NSArray *lista, NSNumber *anoAtual) {
    int proxAno = [anoAtual intValue] + 1;
    for (NSUInteger i = 1; i < 10; i++) {
        BEPiDFuncionario *funcionario = [lista objectAtIndex:i];
        [funcionario presentearFuncionario:[NSNumber numberWithInt:proxAno]];
    }

}
