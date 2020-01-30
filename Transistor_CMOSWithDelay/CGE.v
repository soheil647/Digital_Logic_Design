module CGE(input a,b,e,output w);
  wire ab,bb,i,ib,j,jb,eb;
  inv1 n1(a,ab),
       n2(b,bb),
       n3(i,ib),
       n4(j,jb),
       n5(e,eb);
  nand1 a1(ab,b,i),
        a2(a,bb,j);
  nor3 L(ib,jb,eb,w);
endmodule
