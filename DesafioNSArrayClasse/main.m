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
        
        NSArray *salarios = [NSArray arrayWithObjects:
                             [NSNumber numberWithFloat:100.00f],
                             [NSNumber numberWithFloat:1000.00f],
                             [NSNumber numberWithFloat:3000.00f],
                             [NSNumber numberWithFloat:8000.00f],
                             [NSNumber numberWithFloat:12000.00f],
                             [NSNumber numberWithFloat:17000.00f],
                             nil];
        
        for (NSUInteger i = 0; i < 30; i++) {
            BEPiDFuncionario *funcionario = [[BEPiDFuncionario alloc] init];
            [funcionario setId:i];
            [funcionario setNome:[nomes objectAtIndex:(i%10)]];
            [funcionario setSalario:[(NSNumber*)[salarios objectAtIndex:(i%6)] floatValue]];
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
        print_func(lista,10);
        print_func(lista,11);
        print_func(lista,12);
        print_func(lista,13);
        print_func(lista,14);
        print_func(lista,15);
        print_func(lista,16);
        print_func(lista,17);
        print_func(lista,18);
        print_func(lista,19);
        
        assign_cars(lista);
        
        for (NSUInteger i = 1; i < 10; i++) {
            BEPiDFuncionario *funcionario = [lista objectAtIndex:i];
            [funcionario aumentarSalarioDeFuncionario];
        }
        
        presentear(lista, [empresa anoAtual]);
        
        NSMutableArray *setores = [[NSMutableArray alloc] init];
        
        BEPiDSetor *setor = [[BEPiDSetor alloc] init];
        [setor setSetorId:0];
        [setor setNome:@"RH"];
        [setor setFuncionarios:[NSMutableArray arrayWithObjects:[lista subarrayWithRange:NSMakeRange(0, 6)], nil]];
        [setores addObject:setor];
        
        setor = [[BEPiDSetor alloc] init];
        [setor setSetorId:1];
        [setor setNome:@"Operacional"];
        [setor setFuncionarios:[NSMutableArray arrayWithObjects:[lista subarrayWithRange:NSMakeRange(6, 6)], nil]];
        [setores addObject:setor];
        
        setor = [[BEPiDSetor alloc] init];
        [setor setSetorId:2];
        [setor setNome:@"Financeiro"];
        [setor setFuncionarios:[NSMutableArray arrayWithObjects:[lista subarrayWithRange:NSMakeRange(12, 6)], nil]];
        [setores addObject:setor];
        
        setor = [[BEPiDSetor alloc] init];
        [setor setSetorId:1];
        [setor setNome:@"Herdeiros"];
        [setor setFuncionarios:[NSMutableArray arrayWithObjects:[lista subarrayWithRange:NSMakeRange(18, 6)], nil]];
        [setores addObject:setor];
        
        [empresa setSetores:setores];
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
    
    for (NSUInteger i = 0; i < [employees count]; i++) {
        BEPiDCarro *carro = [[BEPiDCarro alloc] init];
        [carro setMarca:[marcas objectAtIndex:(i%10)]];
        [carro setModelo:[modelos objectAtIndex:(i%10)]];
        [carro setPlaca:[placas objectAtIndex:(i%10)]];
        [carro setCor:[cores objectAtIndex:(i%10)]];
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
