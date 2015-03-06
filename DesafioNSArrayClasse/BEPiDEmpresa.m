//
//  BEPiDEmpresa.m
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/2/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import "BEPiDEmpresa.h"

@implementation BEPiDEmpresa

- (void) setSetores: (NSArray*) setores {
    _setores = [[NSArray alloc] initWithArray:setores];
}

- (NSArray*) setores {
    return [[NSArray alloc] initWithArray:_setores];
}

- (void) setAnoAtual: (int) anoAtual {
    _anoAtual = [[NSNumber alloc] initWithInt:anoAtual];
}

- (NSNumber*) anoAtual {
    return [[NSNumber alloc] initWithInt:[_anoAtual intValue]];
}

- (NSUInteger) numeroDeFuncionarios
{
    NSUInteger count = 0;
    for (BEPiDSetor *setor in [NSMutableArray arrayWithArray:_setores]) {
        count += [[setor funcionarios] count];
    }
    return count;
}

- (void) demitirFuncionarios
{
    for (BEPiDSetor *setor in [NSArray arrayWithArray:_setores]) {
        NSArray *funcionarios = [setor funcionarios];
        for (BEPiDFuncionario *funcionario in funcionarios) {
            <#statements#>
        }
    }
}

@end
