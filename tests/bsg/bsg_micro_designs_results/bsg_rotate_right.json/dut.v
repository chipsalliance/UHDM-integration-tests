module bsg_rotate_right(data_i, rot_i, o);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  input [15:0] data_i;
  wire [15:0] data_i;
  output [15:0] o;
  wire [15:0] o;
  input [3:0] rot_i;
  wire [3:0] rot_i;
  wire [31:0] temp;
  assign _000_ = rot_i[0] ? data_i[1] : data_i[0];
  assign _001_ = rot_i[0] ? data_i[3] : data_i[2];
  assign _002_ = rot_i[1] ? _001_ : _000_;
  assign _003_ = rot_i[0] ? data_i[5] : data_i[4];
  assign _004_ = rot_i[0] ? data_i[7] : data_i[6];
  assign _005_ = rot_i[1] ? _004_ : _003_;
  assign _006_ = rot_i[2] ? _005_ : _002_;
  assign _007_ = rot_i[0] ? data_i[9] : data_i[8];
  assign _008_ = rot_i[0] ? data_i[11] : data_i[10];
  assign _009_ = rot_i[1] ? _008_ : _007_;
  assign _010_ = rot_i[0] ? data_i[13] : data_i[12];
  assign _011_ = rot_i[0] ? data_i[15] : data_i[14];
  assign _012_ = rot_i[1] ? _011_ : _010_;
  assign _013_ = rot_i[2] ? _012_ : _009_;
  assign o[0] = rot_i[3] ? _013_ : _006_;
  assign _014_ = rot_i[0] ? data_i[2] : data_i[1];
  assign _015_ = rot_i[0] ? data_i[4] : data_i[3];
  assign _016_ = rot_i[1] ? _015_ : _014_;
  assign _017_ = rot_i[0] ? data_i[6] : data_i[5];
  assign _018_ = rot_i[0] ? data_i[8] : data_i[7];
  assign _019_ = rot_i[1] ? _018_ : _017_;
  assign _020_ = rot_i[2] ? _019_ : _016_;
  assign _021_ = rot_i[0] ? data_i[10] : data_i[9];
  assign _022_ = rot_i[0] ? data_i[12] : data_i[11];
  assign _023_ = rot_i[1] ? _022_ : _021_;
  assign _024_ = rot_i[0] ? data_i[14] : data_i[13];
  assign _025_ = rot_i[0] ? data_i[0] : data_i[15];
  assign _026_ = rot_i[1] ? _025_ : _024_;
  assign _027_ = rot_i[2] ? _026_ : _023_;
  assign o[1] = rot_i[3] ? _027_ : _020_;
  assign _028_ = rot_i[1] ? _003_ : _001_;
  assign _029_ = rot_i[1] ? _007_ : _004_;
  assign _030_ = rot_i[2] ? _029_ : _028_;
  assign _031_ = rot_i[1] ? _010_ : _008_;
  assign _032_ = rot_i[1] ? _000_ : _011_;
  assign _033_ = rot_i[2] ? _032_ : _031_;
  assign o[2] = rot_i[3] ? _033_ : _030_;
  assign _034_ = rot_i[1] ? _017_ : _015_;
  assign _035_ = rot_i[1] ? _021_ : _018_;
  assign _036_ = rot_i[2] ? _035_ : _034_;
  assign _037_ = rot_i[1] ? _024_ : _022_;
  assign _038_ = rot_i[1] ? _014_ : _025_;
  assign _039_ = rot_i[2] ? _038_ : _037_;
  assign o[3] = rot_i[3] ? _039_ : _036_;
  assign _040_ = rot_i[2] ? _009_ : _005_;
  assign _041_ = rot_i[2] ? _002_ : _012_;
  assign o[4] = rot_i[3] ? _041_ : _040_;
  assign _042_ = rot_i[2] ? _023_ : _019_;
  assign _043_ = rot_i[2] ? _016_ : _026_;
  assign o[5] = rot_i[3] ? _043_ : _042_;
  assign _044_ = rot_i[2] ? _031_ : _029_;
  assign _045_ = rot_i[2] ? _028_ : _032_;
  assign o[6] = rot_i[3] ? _045_ : _044_;
  assign _046_ = rot_i[2] ? _037_ : _035_;
  assign _047_ = rot_i[2] ? _034_ : _038_;
  assign o[7] = rot_i[3] ? _047_ : _046_;
  assign o[8] = rot_i[3] ? _006_ : _013_;
  assign o[9] = rot_i[3] ? _020_ : _027_;
  assign o[10] = rot_i[3] ? _030_ : _033_;
  assign o[11] = rot_i[3] ? _036_ : _039_;
  assign o[12] = rot_i[3] ? _040_ : _041_;
  assign o[13] = rot_i[3] ? _042_ : _043_;
  assign o[14] = rot_i[3] ? _044_ : _045_;
  assign o[15] = rot_i[3] ? _046_ : _047_;
  assign temp = { 16'hxxxx, o };
endmodule
