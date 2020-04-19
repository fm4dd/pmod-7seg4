// -------------------------------------------------------
// This program is a decimal counter 0..9999, displayed on
// the 4-digit 7-segment display. Counts in 1Hz intervals.
// 12MHz clock: set breakpoint at 23'd5999999
// 50MHz clock: set breakpoint at 25'd24999999
// -------------------------------------------------------
module pmod_7seg4_1 (
  input clk,
  output seg_a,
  output seg_b,
  output seg_c,
  output seg_d,
  output seg_e,
  output seg_f,
  output seg_g,
  output seg_dp,
  output ca1,
  output ca2,
  output ca3,
  output ca4
);

  reg clk_1hz = 1'b0;
  reg [22:0] clk_count = 23'd0;
  reg [3:0] DIGIT;
  reg [7:0] SEG;
  assign {seg_dp, seg_g, seg_f, seg_e, seg_d, seg_c, seg_b, seg_a} = SEG;
  assign {ca1, ca2, ca3, ca4} = DIGIT;
  reg [3:0] units, tens, hundreds, thousands;

  display_7seg display(.CLK (clk), .units (units), .tens (tens), .hundreds (hundreds), .thousands (thousands), .SEG (SEG), .DIGIT (DIGIT));

  always @(posedge clk)
  begin
    clk_count   <= clk_count + 1;
    if(clk_count == 23'd5999999)
    begin
      clk_count   <= 0;
      clk_1hz <= ~clk_1hz;
    end
  end

  always @(posedge clk_1hz)
  begin
    units <= units + 1;
    if (units == 9)
    begin
      units <= 0;
      tens <= tens + 1;
      if (tens == 9)
      begin
        tens <= 0;
        hundreds <= hundreds + 1;
        if (hundreds == 9)
        begin
          hundreds <= 0;
          thousands <= thousands + 1;
          if(thousands == 9)
          begin
            thousands <= 0;
          end
        end
      end
    end
  end
endmodule // end top-level module

// -------------------------------------------------------
// module display_7seg converts 4 decimal digits to 7-seg
// -------------------------------------------------------
module display_7seg(
  input CLK,
  input [3:0] units, tens, hundreds, thousands,
  output [7:0] SEG,
  output [3:0] DIGIT
);

  reg [3:0] digit_data;
  reg [1:0] digit_posn;
  reg [23:0] prescaler;

  encode_7seg encode(.CLK (CLK), .SEG (SEG), .D (digit_data));

  always @(posedge CLK)
  begin
    prescaler <= prescaler + 24'd1;
    if (prescaler == 24'd50000)     // set 1kHz multiplex frequency
    begin
      prescaler <= 0;               // reset the prescaler to zero
      digit_posn <= digit_posn + 2'd1;
      if (digit_posn == 0)
      begin
        digit_data <= units;       // assign digit_data
        DIGIT <= 4'b1110;          // set the 1 digit pin low (enable)
      end
      if (digit_posn == 2'd1)
      begin
        digit_data <= tens;        // assign digit_data to show tens
        DIGIT <= 4'b1101;          // set the 2 digit pin low (enable)
      end
      if (digit_posn == 2'd2)
      begin
        digit_data <= hundreds;    // assign digit_data to show hundreds
        DIGIT <= 4'b1011;          // set the 3 digit pin low (enable)
      end
      if (digit_posn == 2'd3)
      begin
        digit_data <= thousands;   // assign digit_data to show thousands
        DIGIT <= 4'b0111;          // set the 4 digit pin low (enable)
        digit_posn <= 0;           // reset position counter after 4nd digit
      end
    end
  end
endmodule
  
  
// -------------------------------------------------------
// module encode_7seg encodes a bin number as a 7seg digit
// -------------------------------------------------------
module encode_7seg(
  input CLK,
  input [3:0] D,
  output reg [7:0] SEG
);
  
  always @(posedge CLK)
    begin
      case(D)
        //              PGFEDCBA
        4'd0: SEG <= 8'b11000000;
        4'd1: SEG <= 8'b11111001;
        4'd2: SEG <= 8'b10100100;
        4'd3: SEG <= 8'b10110000;
        4'd4: SEG <= 8'b10011001;
        4'd5: SEG <= 8'b10010010;
        4'd6: SEG <= 8'b10000010;
        4'd7: SEG <= 8'b11111000;
        4'd8: SEG <= 8'b10000000;
        4'd9: SEG <= 8'b10010000;
        default: SEG <= 8'b11111111;
      endcase
    end
endmodule
