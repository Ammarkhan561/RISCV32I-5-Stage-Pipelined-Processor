module Mux_PC (
    input logic         PCsrc,              //signal from controller
    input logic  [31:0] PCF,ALUResultM,
    output logic [31:0] PC
);
 always_comb 
 begin 
    case (PCsrc)
        1'b0 :   PC = PCF;
        1'b1 :   PC = ALUResultM; 
        default: PC = PCF;
    endcase
 end 
endmodule