// 2x2 Matrix Multiplication Engine for AI Acceleration
module matrix_multiplier_2x2 (
    // Input Matrix A elements (4-bit unsigned integers)
    input  logic [3:0] a00, input  logic [3:0] a01,
    input  logic [3:0] a10, input  logic [3:0] a11,
    
    // Input Matrix B elements (4-bit unsigned integers)
    input  logic [3:0] b00, input  logic [3:0] b01,
    input  logic [3:0] b10, input  logic [3:0] b11,
    
    // Output Matrix Y elements (9-bit precision to prevent overflow)
    output logic [8:0] y00, output logic [8:0] y01,
    output logic [8:0] y10, output logic [8:0] y11
);

    // Concurrent Combinational Multiply-Accumulate (MAC) Logic Array
    always_comb begin
        // Row 0, Column 0 calculation
        y00 = (a00 * b00) + (a01 * b10);
        
        // Row 0, Column 1 calculation
        y01 = (a00 * b01) + (a01 * b11);
        
        // Row 1, Column 0 calculation
        y10 = (a10 * b00) + (a11 * b10);
        
        // Row 1, Column 1 calculation
        y11 = (a10 * b01) + (a11 * b11);
    end

endmodule
