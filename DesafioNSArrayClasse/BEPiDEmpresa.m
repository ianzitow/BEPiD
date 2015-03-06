//
//  BEPiDEmpresa.m
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/2/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import "BEPiDEmpresa.h"

@implementation BEPiDEmpresa

- (void) setFuncionarios: (NSArray*) funcionarios {
    _funcionarios = [[NSArray alloc] initWithArray:funcionarios];
}

- (NSArray*) funcionarios {
    return [[NSArray alloc] initWithArray:_funcionarios];
}

- (void) setAnoAtual: (int) anoAtual {
    _anoAtual = [[NSNumber alloc] initWithInt:anoAtual];
}

- (NSNumber*) anoAtual {
    return [[NSNumber alloc] initWithInt:[_anoAtual intValue]];
}

- (NSUInteger) numeroDeFuncionarios
{
    return [[NSMutableArray arrayWithArray:_funcionarios] count];
}

@end
