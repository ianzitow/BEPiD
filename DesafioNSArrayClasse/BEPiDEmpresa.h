//
//  BEPiDEmpresa.h
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/2/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDFuncionario.h"
#import "BEPiDSetor.h"

@interface BEPiDEmpresa : NSObject {
    NSArray *_funcionarios;
    NSNumber *_anoAtual;
}

- (void) setFuncionarios: (NSArray*) funcionarios;
- (NSArray*) funcionarios;
- (void) setAnoAtual: (int) anoAtual;
- (NSNumber*) anoAtual;
- (NSUInteger) numeroDeFuncionarios;

@end
