
module full_adder 
  (a, b, cin, sum, cout);
 
  input  a , b, cin ;
  output sum , cout ;
 
  wire   w1;
  wire   w2;
  wire   w3;
       
  assign w1 = a ^ b;
  assign w2 = w1 & cin ;
  assign w3 = a & b;
 
  assign sum   = a ^ cin;
  assign cout = w2 | w3;
 
 
  //  assign sum   = a ^ b ^ cin;
  //    assign cout = (a ^ b) & cin) | (a & b);

   
endmodule 
