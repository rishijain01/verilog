module my_full_adder( input A,
       input B,
       input CIN,
       output S,
       output COUT
       );
       assign S = A^B^CIN;
       assign COUT = (A&B) | (CIN&(A^B));

endmodule

module four_bit_adder( 
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] S,
    output C4
    );
    wire C1,C2,C3;

    my_full_adder fa0 (A[0],B[0],C0,S[0],C1);
    my_full_adder fa1 (A[1],B[1],C1,S[1],C2);
    my_full_adder fa2 (A[2],B[2],C2,S[2],C3);
    my_full_adder fa3 (A[3],B[3],C3,S[3],C4);


endmodule