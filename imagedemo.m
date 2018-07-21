a = [ 1, 1, 1, 0 , 0, 1,0,1;
    0, 0, 1, 0 , 0, 1,0,1;
    0, 0, 1, 0 , 1, 1,0,1;
    0, 0, 1, 1 , 1, 1,0,1;
    0, 0, 1, 0 , 0, 1,0,1;
    0, 0, 1, 0 , 0, 1,0,1;
    0, 0, 1, 0 , 1, 1,0,1;
    0, 0, 1, 1 , 1, 1,0,1;
    0, 0, 1, 0 , 0, 1,0,1;
];
figure( 1 ) 
imshow( a )
imwrite( a , 'ab.bmp' )
b = [a ,a, a,a ;
    a ,a, a,a ;
    a ,a, a,a;
    a ,a, a,a ] ;
imwrite( b , 'ablarge.bmp' ) 
bClone = imread( 'ablarge.bmp' ) 
figure( 2 ) 
imshow ( bClone )
figure( 3 ) 
image ( bClone )