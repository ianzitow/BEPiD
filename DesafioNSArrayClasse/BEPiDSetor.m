//
//  BEPiDSetor.m
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/5/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import "BEPiDSetor.h"

@implementation BEPiDSetor

- (void) setSetorId: (NSUInteger) setorId
{
    _setorId = setorId;
}

- (NSUInteger) setorId
{
    return _setorId;
}

- (void) setNome: (NSString*) nome
{
    _nome = [NSString stringWithString:nome];
}

- (NSString*) nome
{
    return [NSString stringWithString:_nome];
}

- (void) setFuncionarios: (NSMutableArray*) funcionarios
{
    _funcionarios = [NSMutableArray arrayWithArray:funcionarios];
}

- (NSMutableArray*) funcionarios
{
    return [NSMutableArray arrayWithArray:_funcionarios];
}

- (NSUInteger) numeroDeFuncionarios
{
    return [[NSMutableArray arrayWithArray:_funcionarios] count];
}

@end
