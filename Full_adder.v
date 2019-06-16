
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