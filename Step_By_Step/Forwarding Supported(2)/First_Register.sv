module first_register (
    input               clk ,rst,
    input  logic [31:0] Addr, Inst,
    output logic [31:0] AddrD, InstD
);
    always_ff @( posedge clk ) begin 
     
        if(rst) begin
            AddrD <= 32'b0;
            InstD <= 32'b0;
        end

        else begin
            AddrD <= Addr;
            InstD <= Inst;
        end
    end
    
endmodule