// Code your design here
module my_full_adder( input A,
       input B,
       input CIN,
       output S,
       output COUT
       );
       assign S = A^B^CIN;
       assign COUT = (A&B) | (CIN&(A^B));

endmodule

module six_bit_adder( 
  input [5:0] A,
  input [5:0] B,
  input C0,
  output [5:0] S,
  output Cout
    );
    wire C1,C2,C3,C4,C5;

    my_full_adder fa0 (A[0],B[0],C0,S[0],C1);
    my_full_adder fa1 (A[1],B[1],C1,S[1],C2);
    my_full_adder fa2 (A[2],B[2],C2,S[2],C3);
    my_full_adder fa3 (A[3],B[3],C3,S[3],C4);
    my_full_adder fa4 (A[4],B[4],C4,S[4],C5);
    my_full_adder fa5 (A[5],B[5],C5,S[5],Cout);


endmodule