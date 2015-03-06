//
//  BEPiDCarro.m
//  DesafioNSArrayClasse
//
//  Created by Ian Ferreira dos Santos on 3/3/15.
//  Copyright (c) 2015 Ian Ferreira dos Santos. All rights reserved.
//

#import "BEPiDCarro.h"

@implementation BEPiDCarro

- (void) setMarca: (NSString*) marca {
    _marca = [[NSString alloc] initWithString:marca];
}
- (NSString*) marca {
    return [[NSString alloc] initWithString:_marca];
}
- (void) setModelo: (NSString*) modelo {
    _modelo = [[NSString alloc] initWithString:modelo];
}
- (NSString*) modelo {
    return [[NSString alloc] initWithString:_modelo];
}
- (void) setPlaca: (NSString*) placa {
    _placa = [[NSString alloc] initWithString:placa];
}
- (NSString*) placa {
    return [[NSString alloc] initWithString:_placa];
}
- (void) setCor: (NSString*) cor {
    _cor = [[NSString alloc] initWithString:cor];
}
- (NSString*) cor {
    return [[NSString alloc] initWithString:_cor];
}
- (void) setAno: (NSNumber*) ano {
    _ano = [[NSNumber alloc] initWithInt:[ano intValue]];
}
- (NSNumber*) ano {
    return [[NSNumber alloc] initWithInt:[_ano intValue]];
}

@end
