//
//  BEPiDFuncionario.m
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/2/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import "BEPiDFuncionario.h"

@implementation BEPiDFuncionario

- (void) setId: (NSUInteger) idFunc {
    _id = [NSNumber numberWithUnsignedInteger:idFunc];
}

- (NSUInteger) idFunc {
    return [_id unsignedIntegerValue];
}

- (void) setNome: (NSString*) nome {
    _nome = [[NSString alloc] initWithString:nome];
}

- (NSString*) nome {
    return [[NSString alloc] initWithString:_nome];
}

- (void) setCargo: (NSString*) cargo {
    _cargo = [[NSString alloc] initWithString:cargo];
}

- (NSString*) cargo {
    return [[NSString alloc] initWithString:_cargo];
}

- (void) setSalario: (float) salario {
    _salario = [[NSNumber alloc] initWithFloat:salario];
    [self updateCargo:salario];
}

- (NSNumber*) salario {
    return [[NSNumber alloc] initWithFloat:[_salario floatValue]];
}

//- (void) setCarro: (BEPiDCarro*) carro {
//    _carro = [[BEPiDCarro alloc] init];
//    [_carro setMarca:[carro marca]];
//    [_carro setModelo:[carro modelo]];
//    [_carro setPlaca:[carro placa]];
//    [_carro setCor:[carro cor]];
//    [_carro setAno:[carro ano]];
//}

//- (BEPiDCarro*) carro {
//    BEPiDCarro *carro = [[BEPiDCarro alloc] init];
//    [carro setMarca:[_carro marca]];
//    [carro setModelo:[_carro modelo]];
//    [carro setPlaca:[_carro placa]];
//    [carro setCor:[_carro cor]];
//    [carro setAno:[_carro ano]];
//    return carro;
//}

- (void) addCarro: (BEPiDCarro*) carro {
    NSMutableArray *carros = [[NSMutableArray alloc] initWithArray:_carros];
    [carros addObject:carro];
    _carros = carros;
}

- (NSMutableArray*) carros {
    return _carros;
}

- (void) aumentarSalarioDeFuncionario {
    float novoSalario = [[self salario] floatValue]*1.2;
    [self setSalario:novoSalario];
}

- (void) presentearFuncionario: (NSNumber*) anoAtual {
    if ([[self cargo] isEqualToString:@"Gerente"] || [[self cargo] isEqualToString:@"Presidente"] || [[self cargo] isEqualToString:@"Herdeiro"]) {
        BEPiDCarro *corolla = [[BEPiDCarro alloc] init];
        [corolla setMarca:@"Toyota"];
        [corolla setModelo:@"Corolla"];
        [corolla setPlaca:[NSString stringWithFormat:@"HJA-262%lu", (unsigned long)[self idFunc]]];
        [corolla setCor:@"Prata Colossal"];
        [corolla setAno:anoAtual];
        
        [self addCarro:corolla];
    }
}

- (void) updateCargo: (float) salario {
    if (salario <= 800.00) {
        [self setCargo:@"Estagiário"];
    } else if (salario > 800.00 && salario <= 2000.00) {
        [self setCargo:@"Assistente"];
    } else if (salario > 2000.00 && salario <= 5000.00) {
        [self setCargo:@"Chefe de Setor"];
    } else if (salario > 5000.00 && salario <= 10000.00) {
        [self setCargo:@"Gerente"];
    } else if (salario > 10000.00 && salario <= 15000.00) {
        [self setCargo:@"Presidente"];
    } else if (salario > 15000.00 && salario <= 20000.00) {
        [self setCargo:@"Herdeiro"];
    }
}

@end
