//
//  BEPiDCarro.h
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/3/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BEPiDCarro : NSObject {
    NSString *_marca;
    NSString *_modelo;
    NSString *_placa;
    NSString *_cor;
    NSNumber *_ano;
}

- (void) setMarca: (NSString*) marca;
- (NSString*) marca;
- (void) setModelo: (NSString*) modelo;
- (NSString*) modelo;
- (void) setPlaca: (NSString*) placa;
- (NSString*) placa;
- (void) setCor: (NSString*) cor;
- (NSString*) cor;
- (void) setAno: (NSNumber*) ano;
- (NSNumber*) ano;

@end
