//
//  ViewController.h
//  Quiz
//
//  Created by Patricia Machado de Abreu on 23/02/15.
//  Copyright (c) 2015 Patricia Machado de Abreu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelPergunta;
@property (weak, nonatomic) IBOutlet UILabel *labeResposta;
@property NSArray *pergunta;
@property NSArray *resposta;
@property int contadorPerg;
@property NSArray *imagens;

@property (weak, nonatomic) IBOutlet UIImageView *imagem;

- (IBAction)mostrarPergunta:(id)sender;
- (IBAction)mostrarResposta:(id)sender;


@end

