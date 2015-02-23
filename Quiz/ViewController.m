//
//  ViewController.m
//  Quiz
//
//  Created by Patricia Machado de Abreu on 23/02/15.
//  Copyright (c) 2015 Patricia Machado de Abreu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize labelPergunta, labeResposta, pergunta, resposta, contadorPerg, imagem, imagens;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    pergunta = @[@"Em qual faculdade estuda?", @"Qual o nome desse projeto?", @"Qual o nome da professora desse projeto? "];
    
    resposta = @[@"Universidade Presbiteriana Mackenzie", @"MackMobile", @"Ilana"];
    
    imagens = @[[UIImage imageNamed:@"imagem2.png"], [UIImage imageNamed:@"imagem1.jpg"], [UIImage imageNamed:@"imagem3.jpg"]];
    
    contadorPerg = -1;
    [labeResposta setText:@"???"];
    [labelPergunta setText:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrarPergunta:(id)sender {
    [labeResposta setText:@"???"];
    contadorPerg ++;
    if (contadorPerg < 3) {
        [labelPergunta setText:pergunta[contadorPerg]];
    }else{
        contadorPerg = 0;
        [labelPergunta setText:pergunta[contadorPerg]];
    }
    
    
}

- (IBAction)mostrarResposta:(id)sender {
    [labeResposta setText:resposta[contadorPerg]];
    [imagem setImage:imagens[contadorPerg]];
}
@end
