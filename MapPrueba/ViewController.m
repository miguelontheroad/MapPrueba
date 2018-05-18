//
//  ViewController.m
//  MapPrueba
//
//  Created by user137716 on 25/04/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Centra el mapa en una posición determinada
    CLLocationCoordinate2D location;
    location.latitude = 40.416776;
    location.longitude = -3.703789;
    //Determinamos una región centrada en las coordenadas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location,500, 500);
    //Le pasamos la region al mapa
    [_mapa setRegion:region animated:NO];
    //Vamos a añadir un marcador en el mapa
    
}

-(IBAction)mostrarNuevoMarcador:(id)sender{
    CLLocationCoordinate2D location3 = CLLocationCoordinate2DMake(40.425776, -3.70689);
    MKPointAnnotation *marcador3 = [[MKPointAnnotation alloc] init];
    
    [marcador3 setCoordinate:location3];
    [marcador3 setTitle:@"Nuevo Marcador"];
    [marcador3 setSubtitle:@"aquí aparece"];
    //añadimos el marcador
    [_mapa addAnnotation:marcador3];
    
    MKCoordinateRegion region2 = MKCoordinateRegionMakeWithDistance(location3,500, 500);
     [_mapa setRegion:region2 animated:NO];
}

-(IBAction)VolverMarcadorOriginal:(id)sender{
    CLLocationCoordinate2D location;
    location.latitude = 40.416776;
    location.longitude = -3.703789;
    //Determinamos una región centrada en las coordenadas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location,500, 500);
    //Le pasamos la region al mapa
    [_mapa setRegion:region animated:NO];
    //Vamos a añadir un marcador en el mapa
    CLLocationCoordinate2D location2 = CLLocationCoordinate2DMake(40.415776, -3.70489);
    MKPointAnnotation *marcador = [[MKPointAnnotation alloc] init];
    
    [marcador setCoordinate:location2];
    [marcador setTitle:@"Título"];
    [marcador setSubtitle:@"y un subtítulo"];
    //añadimos el marcador
    [_mapa addAnnotation:marcador];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
