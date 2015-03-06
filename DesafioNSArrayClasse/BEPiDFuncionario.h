//
//  BEPiDFuncionario.h
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/2/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BEPiDCarro.h"

@interface BEPiDFuncionario : NSObject {
    NSNumber *_id;
    NSString *_nome;
    NSNumber *_salario;
    NSMutableArray *_carros;
    NSString *_cargo;
}

- (void) setId: (NSUInteger) idFunc;
- (NSUInteger) idFunc;
- (void) setNome: (NSString*) nome;
- (NSString*) nome;
- (void) setSalario: (float) salario;
- (NSNumber*) salario;
- (void) addCarro: (BEPiDCarro*) carro;
- (NSMutableArray*) carros;
- (void) setCargo: (NSString*) cargo;
- (NSString*) cargo;

- (void) aumentarSalarioDeFuncionario;
- (void) presentearFuncionario: (NSNumber*) anoAtual;

@end
