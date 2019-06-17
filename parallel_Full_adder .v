module Half_adder(a, b, sum , cout);
    input a, b;
    output sum , cout;

    assign sum = a ^ b ;
    assign cout= a & b ;

endmodule 
 //Full addder
module Full_adder(a , b, cin , sum , cout);
  input a, b , cin ;
  output cout , sum ;
  wire c1 , s1 , c2 , s2 ;
  
 Half_adder ha1 (a , b , s1 , c1) ;
 Half_adder ha2 (s1 , cin ,s2 , c2) ;
 
 assign sum = s2 ;
 assign cout = c1 | c2 ;

endmodule
module parallel_Full_adder([3:0]a ,[3:0] b, cin , [3:0]sum , cout);
 

 input [3:0]a ,[3:0] b, cin ; 
 output [3:0]sum , cout ; 
  
 wire c1 , c2 , c3 ;

  Full_adder   fa0 (a[0]  ,b[0] , cin , sum[0] ),
               fa1 (a[1]  ,b[1] , c1 , sum[1] ),
               fa1 (a[2]  ,b[2] , c1 , sum[2] ),
               fa1 (a[3]  ,b[3] , c1 , sum[3] );
                 
endmodule
                