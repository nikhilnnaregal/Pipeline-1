module tb_pipe1;
parameter N=10 ;
wire [N-1 :0] F;
reg [N-1:0] A,B,C,D;
reg clk;

pipeline_1 MYPIPR( F,A,B,C,D,clk);

initial clk=0;

always #10 clk=~clk;

initial
 begin
  #13 A=10 ;B=12 ;C=6; D=3 ;      // F=75
  #20 A=10; B=10 ;C=5; D=3 ;    //F=66
  #20 A=20; B=11; C=1 ;D=4;   // F=112
end

endmodule
/*initial
 begin
  $dumpfile ("pipe1.vcd */





