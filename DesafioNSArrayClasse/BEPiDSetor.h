//
//  BEPiDSetor.h
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/5/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BEPiDSetor : NSObject {
    NSUInteger _setorId;
    NSString *_nome;
    NSMutableArray *_funcionarios;
}

- (void) setSetorId: (NSUInteger) setorId;
- (NSUInteger) setorId;
- (void) setNome: (NSString*) nome;
- (NSString*) nome;
- (void) setFuncionarios: (NSMutableArray*) funcionarios;
- (NSMutableArray*) funcionarios;
- (NSUInteger) numeroDeFuncionarios;

@end
