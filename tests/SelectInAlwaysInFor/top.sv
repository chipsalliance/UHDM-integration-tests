module top(output logic [31:0] o);
   logic [1:0][31:0] data_state;

   assign data_state[0] = 32'hABCD;

   for (genvar r = 0; r < 1; r++) begin : gen_round
      logic [31:0] data_state_sbox;
      always_comb begin : p_enc
         data_state_sbox = data_state[r];
         data_state[r + 1] = data_state_sbox;
      end
   end // gen_round

   assign o = data_state[1];
endmodule
