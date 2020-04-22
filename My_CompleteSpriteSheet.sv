/*
    This sprite table was generated using 'conv_to_sv.py'. Find out more here: https://github.com/Atrifex/ECE385-HelperTools
    To use, instantiate this module in your color mapper. The SpriteX input should be connected to
        'ObjectXSize - DistX', where ObjectXSize is the width of your object in pixels along the
        x direction. DistX is the horizontal distance between the DrawX pxiel and the top left corner
        of the object in question, so something like: 'DistX = DrawX - ObjectXPosition' is fine.
        Similarly this goes for SpriteY. Warning: If you don't do this, your image will be flipped along
        the axis you ignored. This is a handy way to flip an image if you need to, though.
 
    In the color mapper, you can then simply do something like:
    module ColorMapper(...)
    ...
    logic [7:0] ObjectR, ObjectG, ObjectB
    parameter ObjectXSize = 10'd10;
    parameter ObjectYSize = 10'd10;
    ...
    always_comb
    ...
         if(ObjectOn == 1'b1)
         begin
             Red = ObjectR
             Green = ObjectG
             Blue = ObjectB
         end
     ...
     ObjectSpriteTable ost(
                           .SpriteX(ObjectXSize - DistX), .SpriteY(ObjectYSize - DistY),
                           .SpriteR(ObjectR), .SpriteG(ObjectG), .SpriteB(ObjectB)
                           );
 
     See the comment at the top of the generation script if you're still confused.
*/
module CompleteSpriteSheet(input [9:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

logic [9:0] X_Index, Y_Index;

assign X_Index = SpriteX % 10'd8;
assign Y_Index = SpriteY % 10'd8;
logic [9:0] SpriteTableR;

parameter bit [7:0] SpritePaletteR[10:0] = '{8'd0, 8'd96, 8'd67, 8'd180, 8'd110, 8'd54, 8'd136, 8'd166, 8'd205, 8'd238, 8'd255};

	always_comb
	begin
		SpriteTableR = 10'd0;
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_6_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_11_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_7_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_0_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_1_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_5_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_10_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_6_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_10_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_6_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_4_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_9_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_5_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_10_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_3_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_1_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_8_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_2_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_9_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_5_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_10_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_6_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_7_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_0_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_3_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_8_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_4_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_2_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_6_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_11_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_0_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_1_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_10_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_9_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_6_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_11_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_0_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_4_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_9_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_5_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_10_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_5_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_8_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_4_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_2_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_9_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_5_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_11_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_7_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_3_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_1_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_8_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_4_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_2_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_9_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_11_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_7_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_0_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_3_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_1_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_8_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_2_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_11_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_6_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_11_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_7_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_0_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_9_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_5_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_10_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_7_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_3_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_8_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_4_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_2_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_5_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_10_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_7_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_3_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_1_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_8_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_4_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_2_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_9_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_6_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_11_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_7_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_0_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_3_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_1_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_8_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_10_2[Y_Index][X_Index];
		end
	end

parameter bit [3:0] SpriteTableR_7_3[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd08,4'd03,4'd08,4'd08,4'd03},
'{4'd10,4'd10,4'd10,4'd03,4'd03,4'd08,4'd08,4'd03},
'{4'd10,4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_6_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd07,4'd07},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd07,4'd07},
'{4'd00,4'd05,4'd02,4'd00,4'd02,4'd00,4'd02,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd02,4'd02,4'd00},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd00,4'd02,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_11[7:0][7:0] = '{'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd02,4'd00},
'{4'd10,4'd10,4'd00,4'd05,4'd02,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd02,4'd00,4'd02,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd10,4'd07},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_0_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd03,4'd05,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd03,4'd05,4'd05,4'd05,4'd02,4'd03,4'd10,4'd10},
'{4'd03,4'd05,4'd05,4'd05,4'd03,4'd10,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd05,4'd02,4'd02,4'd00},
'{4'd10,4'd00,4'd04,4'd02,4'd04,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd02,4'd05,4'd00},
'{4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd00},
'{4'd10,4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_0_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd00,4'd09}};

parameter bit [3:0] SpriteTableR_3_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd03,4'd05,4'd02,4'd05,4'd02,4'd05,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd04,4'd02,4'd04,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd05,4'd05,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd05,4'd02,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_11[7:0][7:0] = '{'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd08,4'd00,4'd10,4'd10,4'd10,4'd07,4'd07},
'{4'd08,4'd08,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_8[7:0][7:0] = '{'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd00,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_10_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_0[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd03,4'd09,4'd08,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd04,4'd02,4'd04,4'd03,4'd10},
'{4'd10,4'd03,4'd03,4'd08,4'd08,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd08,4'd09,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_5[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd00,4'd02,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd02,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_5[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd09,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_6[7:0][7:0] = '{'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd00,4'd02,4'd00,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd07,4'd07,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd07,4'd07,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd00,4'd02}};

parameter bit [3:0] SpriteTableR_0_4[7:0][7:0] = '{'{4'd02,4'd02,4'd01,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd01,4'd00,4'd01,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd02,4'd02,4'd02,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd01,4'd00,4'd01,4'd00,4'd02,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_1_1[7:0][7:0] = '{'{4'd02,4'd02,4'd01,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_4_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_2[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_2_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd05,4'd02,4'd02,4'd03},
'{4'd10,4'd03,4'd04,4'd02,4'd04,4'd02,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd05,4'd05,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd05,4'd02,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_9_14[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd00,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_11[7:0][7:0] = '{'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd08,4'd08,4'd09,4'd00},
'{4'd10,4'd10,4'd00,4'd03,4'd09,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd07,4'd09,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd00,4'd02,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd07,4'd07,4'd07,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd07,4'd07,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd07,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_3[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd08,4'd08,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd08,4'd08,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_6_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00},
'{4'd00,4'd02,4'd02,4'd02,4'd02,4'd02,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd02,4'd00,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_11_0[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_5[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd00,4'd02,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd02,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00}};

parameter bit [3:0] SpriteTableR_3_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd00,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_8_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd07,4'd07},
'{4'd05,4'd02,4'd02,4'd02,4'd02,4'd02,4'd07,4'd10},
'{4'd05,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_11[7:0][7:0] = '{'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd07,4'd08,4'd08,4'd03,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd08,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd00,4'd00,4'd09,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd00,4'd02,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd00,4'd02,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_14[7:0][7:0] = '{'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd09,4'd00},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd00,4'd09,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_14[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd05,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd05,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd07,4'd07,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd07,4'd07,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd05,4'd02}};

parameter bit [3:0] SpriteTableR_7_8[7:0][7:0] = '{'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_14[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd08,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd00,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_11[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd02,4'd02,4'd02,4'd02,4'd02,4'd07,4'd10},
'{4'd02,4'd00,4'd00,4'd10,4'd10,4'd10,4'd07,4'd07},
'{4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd03,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03,4'd08}};

parameter bit [3:0] SpriteTableR_2_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd09,4'd09,4'd07,4'd07,4'd07,4'd10,4'd10},
'{4'd08,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_4[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_1[7:0][7:0] = '{'{4'd02,4'd02,4'd01,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_10_3[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_7_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd03,4'd03,4'd08,4'd08,4'd09,4'd03,4'd10,4'd10},
'{4'd03,4'd03,4'd08,4'd08,4'd03,4'd10,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_14[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd02,4'd00,4'd02,4'd02,4'd00}};

parameter bit [3:0] SpriteTableR_1_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd05,4'd02,4'd05,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd04,4'd02,4'd04,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_11[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd08,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd00,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd05,4'd02,4'd02,4'd00},
'{4'd10,4'd00,4'd04,4'd02,4'd04,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_2_2[7:0][7:0] = '{'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd02}};

parameter bit [3:0] SpriteTableR_1_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd00,4'd09,4'd00,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_1[7:0][7:0] = '{'{4'd00,4'd02,4'd02,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd02,4'd01,4'd00,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd02,4'd01,4'd00,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_10_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd00,4'd02}};

parameter bit [3:0] SpriteTableR_9_7[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_4[7:0][7:0] = '{'{4'd04,4'd04,4'd02,4'd02,4'd02,4'd02,4'd02,4'd01},
'{4'd04,4'd02,4'd02,4'd05,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd05,4'd02,4'd05,4'd02,4'd01,4'd01,4'd06},
'{4'd05,4'd05,4'd05,4'd05,4'd01,4'd06,4'd06,4'd07},
'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06}};

parameter bit [3:0] SpriteTableR_5_4[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd06,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd06,4'd02,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd02,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06}};

parameter bit [3:0] SpriteTableR_11_4[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_4[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd03,4'd09,4'd08,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd04,4'd02,4'd04,4'd09,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd08,4'd03,4'd09,4'd08,4'd03},
'{4'd10,4'd10,4'd10,4'd03,4'd03,4'd08,4'd08,4'd03},
'{4'd10,4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_6_11[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd02,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd03,4'd05,4'd02,4'd05,4'd02,4'd05,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd04,4'd02,4'd04,4'd03,4'd10},
'{4'd03,4'd05,4'd02,4'd05,4'd02,4'd03,4'd10,4'd10},
'{4'd03,4'd05,4'd05,4'd05,4'd03,4'd10,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd02,4'd02,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd02,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd06,4'd00,4'd01,4'd01,4'd01},
'{4'd02,4'd02,4'd02,4'd01,4'd00,4'd02,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_0_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd02,4'd03},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd05,4'd05,4'd05,4'd03},
'{4'd10,4'd10,4'd10,4'd03,4'd05,4'd05,4'd05,4'd03},
'{4'd10,4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_4_11[7:0][7:0] = '{'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd08,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd08,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd07,4'd07,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd05,4'd02,4'd05,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd04,4'd02,4'd04,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd03,4'd05,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd05,4'd05,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd05,4'd05,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd07},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02}};

parameter bit [3:0] SpriteTableR_8_3[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd03,4'd08,4'd08,4'd00},
'{4'd10,4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_5_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd09,4'd00,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_4_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd00,4'd02,4'd00,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd07,4'd10,4'd02,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd03,4'd08,4'd08,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd03,4'd08,4'd08,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_1[7:0][7:0] = '{'{4'd00,4'd02,4'd01,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd01,4'd01,4'd00,4'd02,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd00,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_5_7[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_3[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_4[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02},
'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02},
'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_8_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00}};

parameter bit [3:0] SpriteTableR_4_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00}};

parameter bit [3:0] SpriteTableR_2_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd02,4'd03},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd05,4'd05,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd05,4'd05,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_9_8[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd00,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_0[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd03,4'd09,4'd08,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd04,4'd02,4'd04,4'd00,4'd10},
'{4'd00,4'd03,4'd09,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_13[7:0][7:0] = '{'{4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_6_2[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd07},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd06,4'd04},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd07,4'd04,4'd02},
'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd01,4'd04,4'd02},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd07,4'd04,4'd02},
'{4'd02,4'd01,4'd01,4'd07,4'd01,4'd04,4'd02,4'd05},
'{4'd01,4'd06,4'd07,4'd04,4'd04,4'd02,4'd05,4'd05}};

parameter bit [3:0] SpriteTableR_11_14[7:0][7:0] = '{'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd02,4'd00},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd00,4'd00,4'd02,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_11[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd05,4'd00,4'd10,4'd10,4'd07,4'd02,4'd02},
'{4'd05,4'd05,4'd02,4'd00,4'd07,4'd07,4'd10,4'd10},
'{4'd00,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00,4'd09}};

parameter bit [3:0] SpriteTableR_1_14[7:0][7:0] = '{'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd08,4'd00,4'd10,4'd10,4'd10,4'd07,4'd07},
'{4'd08,4'd08,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd02,4'd00,4'd02,4'd02,4'd00}};

parameter bit [3:0] SpriteTableR_4_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_9_11[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd07},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00},
'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_10_0[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd03,4'd09,4'd08,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd04,4'd02,4'd04,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd07},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00}};

parameter bit [3:0] SpriteTableR_7_14[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd10,4'd07,4'd07,4'd10,4'd10},
'{4'd05,4'd05,4'd00,4'd10,4'd10,4'd07,4'd02,4'd02},
'{4'd05,4'd05,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_4[7:0][7:0] = '{'{4'd06,4'd07,4'd07,4'd07,4'd07,4'd07,4'd06,4'd01},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd07,4'd07,4'd03,4'd03,4'd03,4'd03,4'd03,4'd04},
'{4'd04,4'd04,4'd03,4'd03,4'd03,4'd03,4'd07,4'd04},
'{4'd03,4'd03,4'd03,4'd03,4'd03,4'd07,4'd04,4'd01},
'{4'd07,4'd07,4'd03,4'd03,4'd03,4'd04,4'd06,4'd04},
'{4'd04,4'd04,4'd03,4'd03,4'd03,4'd03,4'd04,4'd04},
'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd01}};

parameter bit [3:0] SpriteTableR_0_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd07,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd09,4'd09,4'd00},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd00,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd09,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd07,4'd07,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd02,4'd02,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd02,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd06,4'd00,4'd01,4'd01,4'd01},
'{4'd02,4'd02,4'd02,4'd01,4'd00,4'd02,4'd02,4'd02},
'{4'd02,4'd02,4'd02,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd02,4'd01,4'd00,4'd02,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_1_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd09,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_8_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_2[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd06,4'd06,4'd07},
'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_2_14[7:0][7:0] = '{'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd07,4'd08,4'd08,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd00,4'd00,4'd09,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_6[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd09,4'd00,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd09,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd00,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd00,4'd02,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_3[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd06,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd02,4'd06,4'd06,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd02,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_11_7[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_5[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_0[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd03,4'd09,4'd08,4'd03,4'd10},
'{4'd10,4'd03,4'd08,4'd04,4'd02,4'd04,4'd03,4'd10},
'{4'd03,4'd03,4'd09,4'd08,4'd09,4'd03,4'd10,4'd10},
'{4'd03,4'd03,4'd08,4'd08,4'd03,4'd10,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_6_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_8[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd02,4'd02,4'd03,4'd10},
'{4'd10,4'd03,4'd05,4'd02,4'd05,4'd02,4'd02,4'd03},
'{4'd10,4'd03,4'd04,4'd02,4'd04,4'd02,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd05,4'd05,4'd02,4'd05,4'd03},
'{4'd10,4'd10,4'd10,4'd03,4'd05,4'd05,4'd05,4'd03},
'{4'd10,4'd10,4'd03,4'd05,4'd03,4'd02,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_1_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd07,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd09,4'd09,4'd00},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd00,4'd07,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_3_4[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd06,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd06,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd06,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd06,4'd02,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd01,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_2_4[7:0][7:0] = '{'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd02,4'd02,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd01,4'd00,4'd02},
'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd02,4'd02,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd00,4'd01,4'd00,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_9_12[7:0][7:0] = '{'{4'd10,4'd07,4'd07,4'd07,4'd07,4'd10,4'd10,4'd10},
'{4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd07,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd00,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_4[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_7[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_11[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd05,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd05,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd00,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd02,4'd10,4'd07,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd07,4'd07,4'd10,4'd10,4'd10,4'd10},
'{4'd07,4'd07,4'd07,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_9_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd03,4'd03,4'd10,4'd10},
'{4'd10,4'd03,4'd08,4'd09,4'd09,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd03,4'd09,4'd08,4'd09,4'd03,4'd10},
'{4'd10,4'd03,4'd04,4'd02,4'd04,4'd09,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd03,4'd08,4'd08,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd08,4'd08,4'd09,4'd03,4'd10},
'{4'd10,4'd10,4'd03,4'd08,4'd03,4'd09,4'd03,4'd10}};

parameter bit [3:0] SpriteTableR_6_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd00,4'd02,4'd00,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_6[7:0][7:0] = '{'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd00,4'd00,4'd02,4'd00,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd02,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_6[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd00,4'd09,4'd00,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_7[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd02,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd02,4'd02,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd00,4'd02,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd06,4'd00,4'd01,4'd01,4'd01,4'd01},
'{4'd02,4'd02,4'd01,4'd00,4'd02,4'd02,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd02,4'd02,4'd02,4'd02},
'{4'd02,4'd00,4'd02,4'd00,4'd02,4'd02,4'd02,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_3_14[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_1_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_14[7:0][7:0] = '{'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd02,4'd05,4'd05,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd00,4'd00,4'd02,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd03,4'd08},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd03,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd07,4'd00}};

parameter bit [3:0] SpriteTableR_3_3[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd01,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd01,4'd06,4'd02,4'd01,4'd06},
'{4'd02,4'd06,4'd01,4'd01,4'd06,4'd02,4'd01,4'd06},
'{4'd01,4'd02,4'd06,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd02,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd06,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd07,4'd01,4'd06,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_2_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd09,4'd09,4'd07,4'd07,4'd07,4'd10,4'd10},
'{4'd09,4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd09,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd04,4'd02,4'd04,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd03,4'd09,4'd08,4'd00},
'{4'd10,4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_5_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_4[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd06,4'd06,4'd07},
'{4'd05,4'd01,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd05,4'd06,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd04,4'd02,4'd05,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd05,4'd05,4'd05,4'd07,4'd01,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_10_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd07,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_6_3[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd04,4'd02},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd02,4'd05},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd01},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd06,4'd06,4'd07},
'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_11_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_0_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00}};

parameter bit [3:0] SpriteTableR_3_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd08,4'd09}};

parameter bit [3:0] SpriteTableR_1_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_8_11[7:0][7:0] = '{'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd02,4'd05,4'd05,4'd05,4'd05,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd00,4'd00,4'd02,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_14[7:0][7:0] = '{'{4'd09,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd08,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd08,4'd08,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd09,4'd00,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_2_10[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd09,4'd00,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_9_10[7:0][7:0] = '{'{4'd07,4'd10,4'd02,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd07,4'd07,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd07,4'd07,4'd07,4'd07,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00,4'd02}};

parameter bit [3:0] SpriteTableR_10_1[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd09,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd04,4'd02,4'd04,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_6_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd07,4'd07},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd07,4'd07},
'{4'd00,4'd05,4'd05,4'd02,4'd02,4'd02,4'd02,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd10},
'{4'd10,4'd00,4'd05,4'd05,4'd05,4'd02,4'd02,4'd00},
'{4'd00,4'd05,4'd05,4'd05,4'd05,4'd00,4'd02,4'd10},
'{4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_11_12[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd00,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd05,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd02,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_7_9[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd02},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd02,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd05},
'{4'd10,4'd10,4'd10,4'd10,4'd00,4'd05,4'd00,4'd00}};

parameter bit [3:0] SpriteTableR_0_13[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd00,4'd00},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd08,4'd09},
'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd07,4'd08,4'd09}};

parameter bit [3:0] SpriteTableR_3_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_2_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd02,4'd02,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd00,4'd02,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd06,4'd00,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06,4'd00}};

parameter bit [3:0] SpriteTableR_1_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd02,4'd00},
'{4'd10,4'd00,4'd05,4'd02,4'd02,4'd02,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd05,4'd00},
'{4'd10,4'd10,4'd10,4'd00,4'd05,4'd05,4'd05,4'd00},
'{4'd10,4'd10,4'd00,4'd05,4'd00,4'd02,4'd00,4'd10}};

parameter bit [3:0] SpriteTableR_8_8[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd00,4'd08,4'd03,4'd08,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_4_3[7:0][7:0] = '{'{4'd02,4'd02,4'd02,4'd01,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd02,4'd01,4'd07,4'd04,4'd01,4'd06,4'd01,4'd06},
'{4'd01,4'd06,4'd04,4'd02,4'd02,4'd05,4'd06,4'd07},
'{4'd02,4'd02,4'd01,4'd02,4'd05,4'd02,4'd02,4'd01},
'{4'd02,4'd01,4'd01,4'd01,4'd05,4'd02,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd06,4'd02,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd07,4'd01,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_9_5[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd09,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd09,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd00,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_5_2[7:0][7:0] = '{'{4'd04,4'd02,4'd02,4'd05,4'd02,4'd02,4'd02,4'd01},
'{4'd02,4'd02,4'd05,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd02,4'd05,4'd05,4'd02,4'd01,4'd01,4'd01,4'd06},
'{4'd05,4'd02,4'd02,4'd06,4'd06,4'd01,4'd01,4'd06},
'{4'd05,4'd02,4'd01,4'd02,4'd02,4'd06,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd02,4'd01,4'd06},
'{4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd06},
'{4'd01,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd07}};

parameter bit [3:0] SpriteTableR_11_6[7:0][7:0] = '{'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd00,4'd09,4'd00,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd08,4'd08,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd03,4'd08,4'd09,4'd00,4'd10},
'{4'd10,4'd10,4'd00,4'd08,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd10,4'd10,4'd00,4'd10,4'd10,4'd10,4'd10}};

parameter bit [3:0] SpriteTableR_10_2[7:0][7:0] = '{'{4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10,4'd10},
'{4'd10,4'd10,4'd00,4'd00,4'd00,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd08,4'd09,4'd09,4'd09,4'd00,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd03,4'd08,4'd08,4'd00,4'd10,4'd10},
'{4'd10,4'd00,4'd08,4'd00,4'd09,4'd00,4'd10,4'd10}};

logic [9:0] SpriteTableG;

parameter bit [7:0] SpritePaletteG[14:0] = '{8'd0, 8'd96, 8'd195, 8'd37, 8'd9, 8'd128, 8'd159, 8'd109, 8'd175, 8'd84, 8'd213, 8'd150, 8'd22, 8'd63, 8'd255};

	always_comb
	begin
		SpriteTableG = 10'd0;
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_6_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_11_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_7_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_0_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_1_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_5_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_10_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_6_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_10_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_6_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_4_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_9_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_5_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_10_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_3_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_1_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_8_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_2_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_9_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_5_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_10_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_6_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_7_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_0_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_3_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_8_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_4_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_2_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_6_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_11_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_0_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_1_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_10_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_9_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_6_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_11_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_0_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_4_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_9_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_5_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_10_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_5_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_8_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_4_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_2_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_9_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_5_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_11_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_7_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_3_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_1_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_8_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_4_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_2_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_9_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_11_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_7_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_0_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_3_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_1_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_8_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_2_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_11_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_6_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_11_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_7_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_0_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_9_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_5_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_10_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_7_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_3_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_8_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_4_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_2_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_5_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_10_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_7_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_3_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_1_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_8_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_4_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_2_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_9_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_6_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_11_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_7_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_0_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_3_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_1_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_8_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_10_2[Y_Index][X_Index];
		end
	end

parameter bit [3:0] SpriteTableG_7_3[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd14},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd08,4'd11,4'd08,4'd08,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd11,4'd08,4'd08,4'd04},
'{4'd00,4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_6_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd08,4'd08},
'{4'd00,4'd11,4'd06,4'd00,4'd06,4'd00,4'd03,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd03,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd06,4'd06,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd00,4'd03,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_11[7:0][7:0] = '{'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd05,4'd11,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd06,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd05,4'd03,4'd00,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd00,4'd08},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd07,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd07,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd05,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_7[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd14},
'{4'd04,4'd11,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd04,4'd07,4'd05,4'd11,4'd06,4'd04,4'd00,4'd00},
'{4'd04,4'd07,4'd05,4'd11,4'd04,4'd00,4'd00,4'd00},
'{4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_6[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd14},
'{4'd00,4'd00,4'd07,4'd06,4'd05,4'd06,4'd06,4'd00},
'{4'd00,4'd00,4'd10,4'd03,4'd10,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd07,4'd06,4'd11,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00},
'{4'd00,4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd02}};

parameter bit [3:0] SpriteTableG_3_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd04,4'd11,4'd06,4'd07,4'd06,4'd05,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd10,4'd03,4'd10,4'd04,4'd00},
'{4'd00,4'd04,4'd07,4'd05,4'd11,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd11,4'd05,4'd06,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_11[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd08,4'd08,4'd00,4'd00,4'd14,4'd14,4'd08,4'd08},
'{4'd08,4'd08,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd00,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd11,4'd02,4'd08,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd10,4'd03,4'd10,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd08,4'd08,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd08,4'd02,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd05,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd02,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd00,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd00,4'd06}};

parameter bit [3:0] SpriteTableG_0_4[7:0][7:0] = '{'{4'd13,4'd13,4'd01,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd01,4'd00,4'd01,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd13,4'd13,4'd13,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd01,4'd00,4'd01,4'd00,4'd13,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_1[7:0][7:0] = '{'{4'd13,4'd13,4'd01,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_10[7:0][7:0] = '{'{4'd14,4'd14,4'd00,4'd00,4'd00,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_2[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd11,4'd11,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_2_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd04,4'd07,4'd06,4'd05,4'd06,4'd06,4'd04},
'{4'd00,4'd04,4'd10,4'd03,4'd10,4'd06,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd07,4'd05,4'd11,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd11,4'd05,4'd06,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_9_14[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd07},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd07},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_2[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd14,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd14},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_11[7:0][7:0] = '{'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd08,4'd08,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd02,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd08,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00},
'{4'd00,4'd14,4'd00,4'd00,4'd14,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd08,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd11,4'd08,4'd08,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd11,4'd08,4'd08,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_6_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00},
'{4'd00,4'd13,4'd13,4'd13,4'd13,4'd13,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd13,4'd00,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00}};

parameter bit [3:0] SpriteTableG_3_12[7:0][7:0] = '{'{4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00,4'd00},
'{4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd14},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd00,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08},
'{4'd11,4'd06,4'd06,4'd03,4'd03,4'd03,4'd08,4'd14},
'{4'd11,4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_11[7:0][7:0] = '{'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd08,4'd08,4'd08,4'd11,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd06,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd05,4'd00,4'd03,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_14[7:0][7:0] = '{'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd00,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_14[7:0][7:0] = '{'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd05,4'd11,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd05,4'd11,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd11,4'd06}};

parameter bit [3:0] SpriteTableG_7_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_14[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd11},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd11},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_11[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11},
'{4'd00,4'd14,4'd14,4'd14,4'd00,4'd00,4'd00,4'd08},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd11,4'd06,4'd06,4'd03,4'd03,4'd03,4'd08,4'd14},
'{4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14},
'{4'd14,4'd14,4'd00,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd14,4'd14,4'd14,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd08,4'd11,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_2_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd02,4'd02,4'd08,4'd08,4'd08,4'd14,4'd14},
'{4'd08,4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_4[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_1[7:0][7:0] = '{'{4'd13,4'd13,4'd01,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_2[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd14},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd04,4'd11,4'd08,4'd08,4'd02,4'd04,4'd00,4'd00},
'{4'd04,4'd11,4'd08,4'd08,4'd04,4'd00,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_14[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd11,4'd07},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd00,4'd07},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd06,4'd00,4'd06,4'd06,4'd00}};

parameter bit [3:0] SpriteTableG_1_5[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd14},
'{4'd00,4'd11,4'd06,4'd07,4'd06,4'd05,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd10,4'd03,4'd10,4'd00,4'd00},
'{4'd00,4'd07,4'd06,4'd11,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_11[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd11},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd11},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd06,4'd05,4'd06,4'd06,4'd00},
'{4'd00,4'd00,4'd10,4'd03,4'd10,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd05,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_2[7:0][7:0] = '{'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd13}};

parameter bit [3:0] SpriteTableG_1_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd02,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00}};

parameter bit [3:0] SpriteTableG_8_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd02,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_1[7:0][7:0] = '{'{4'd00,4'd13,4'd13,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd13,4'd01,4'd00,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd13,4'd01,4'd00,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06,4'd00},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd11,4'd07,4'd05},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd07,4'd06},
'{4'd14,4'd14,4'd14,4'd00,4'd00,4'd05,4'd00,4'd03}};

parameter bit [3:0] SpriteTableG_9_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_4[7:0][7:0] = '{'{4'd13,4'd13,4'd03,4'd03,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd03,4'd03,4'd12,4'd13,4'd01,4'd01,4'd11},
'{4'd03,4'd12,4'd03,4'd12,4'd13,4'd01,4'd01,4'd11},
'{4'd12,4'd12,4'd12,4'd12,4'd01,4'd11,4'd11,4'd08},
'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11}};

parameter bit [3:0] SpriteTableG_5_4[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd11,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd11,4'd13,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd13,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd11,4'd11,4'd11,4'd11,4'd11}};

parameter bit [3:0] SpriteTableG_11_4[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_4[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_1[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd14},
'{4'd00,4'd04,4'd11,4'd02,4'd08,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd10,4'd03,4'd10,4'd02,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd08,4'd11,4'd02,4'd08,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd11,4'd08,4'd08,4'd04},
'{4'd00,4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_6_11[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd11,4'd07},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd03,4'd00,4'd07},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd11,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_5[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd14},
'{4'd04,4'd11,4'd06,4'd07,4'd06,4'd05,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd10,4'd03,4'd10,4'd04,4'd00},
'{4'd04,4'd07,4'd06,4'd11,4'd06,4'd04,4'd00,4'd00},
'{4'd04,4'd07,4'd05,4'd11,4'd04,4'd00,4'd00,4'd00},
'{4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd13,4'd13,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd13,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd11,4'd00,4'd01,4'd01,4'd01},
'{4'd13,4'd13,4'd13,4'd01,4'd00,4'd13,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_8[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd14},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd06,4'd04},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd11,4'd07,4'd05,4'd11,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd05,4'd11,4'd04},
'{4'd00,4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_4_11[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd08,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd14,4'd14,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd07,4'd06,4'd05,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd10,4'd03,4'd10,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd04,4'd11,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd04,4'd07,4'd05,4'd11,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd07,4'd05,4'd11,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd00,4'd11,4'd06},
'{4'd00,4'd14,4'd14,4'd14,4'd00,4'd00,4'd11,4'd06}};

parameter bit [3:0] SpriteTableG_8_3[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd14,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd14},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd11,4'd08,4'd08,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd02,4'd00,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd00,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_10[7:0][7:0] = '{'{4'd14,4'd14,4'd00,4'd00,4'd08,4'd00,4'd03,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_2[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd08,4'd08,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd11,4'd08,4'd08,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_1[7:0][7:0] = '{'{4'd00,4'd13,4'd01,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd01,4'd01,4'd00,4'd13,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd00,4'd01,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd05,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_4[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_2[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13},
'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13},
'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00}};

parameter bit [3:0] SpriteTableG_4_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00}};

parameter bit [3:0] SpriteTableG_2_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd06,4'd04},
'{4'd00,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd07,4'd05,4'd11,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd07,4'd05,4'd11,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_9_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_0[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd14,4'd00,4'd08,4'd11,4'd02,4'd08,4'd00,4'd14},
'{4'd00,4'd00,4'd08,4'd10,4'd03,4'd10,4'd00,4'd00},
'{4'd00,4'd11,4'd02,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_13[7:0][7:0] = '{'{4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_2[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd08},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd11,4'd13},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd08,4'd13,4'd03},
'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd01,4'd13,4'd03},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd08,4'd13,4'd03},
'{4'd13,4'd01,4'd01,4'd08,4'd01,4'd13,4'd03,4'd12},
'{4'd01,4'd11,4'd08,4'd13,4'd13,4'd03,4'd12,4'd12}};

parameter bit [3:0] SpriteTableG_11_14[7:0][7:0] = '{'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd05,4'd00,4'd00,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_11[7:0][7:0] = '{'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd05,4'd11,4'd00,4'd00,4'd14,4'd08,4'd03,4'd03},
'{4'd05,4'd11,4'd06,4'd00,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_10[7:0][7:0] = '{'{4'd00,4'd14,4'd14,4'd00,4'd00,4'd14,4'd14,4'd14},
'{4'd14,4'd14,4'd14,4'd14,4'd14,4'd14,4'd14,4'd14},
'{4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd02}};

parameter bit [3:0] SpriteTableG_1_14[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd00,4'd00,4'd14,4'd14,4'd08,4'd08},
'{4'd08,4'd08,4'd02,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd00,4'd02,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd06,4'd00,4'd06,4'd06,4'd00}};

parameter bit [3:0] SpriteTableG_4_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd14,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_11[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd07},
'{4'd00,4'd14,4'd14,4'd14,4'd00,4'd00,4'd00,4'd05},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00},
'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd01,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd00,4'd01,4'd01,4'd01,4'd00,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd11,4'd02,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd10,4'd03,4'd10,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd14,4'd14,4'd00},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd08},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00}};

parameter bit [3:0] SpriteTableG_7_14[7:0][7:0] = '{'{4'd06,4'd06,4'd00,4'd00,4'd08,4'd08,4'd00,4'd00},
'{4'd05,4'd11,4'd00,4'd00,4'd14,4'd08,4'd03,4'd03},
'{4'd05,4'd11,4'd06,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd06,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_4[7:0][7:0] = '{'{4'd11,4'd08,4'd08,4'd08,4'd08,4'd08,4'd11,4'd01},
'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13},
'{4'd08,4'd08,4'd09,4'd09,4'd09,4'd09,4'd09,4'd13},
'{4'd13,4'd13,4'd09,4'd09,4'd09,4'd09,4'd08,4'd13},
'{4'd09,4'd09,4'd09,4'd09,4'd09,4'd08,4'd13,4'd01},
'{4'd08,4'd08,4'd09,4'd09,4'd09,4'd13,4'd11,4'd13},
'{4'd13,4'd13,4'd09,4'd09,4'd09,4'd09,4'd13,4'd13},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd01}};

parameter bit [3:0] SpriteTableG_0_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd08,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd02,4'd02,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd00,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd02,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd08,4'd08,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd13,4'd13,4'd01},
'{4'd01,4'd01,4'd01,4'd01,4'd00,4'd13,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd11,4'd00,4'd01,4'd01,4'd01},
'{4'd13,4'd13,4'd13,4'd01,4'd00,4'd13,4'd13,4'd13},
'{4'd13,4'd13,4'd13,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd13,4'd13,4'd13,4'd01,4'd00,4'd13,4'd13,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd02,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_2[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd11,4'd11,4'd08},
'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_2_14[7:0][7:0] = '{'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd08,4'd08,4'd08,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd02,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd02,4'd00,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd02,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_3[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd11,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd13,4'd11,4'd11,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd13,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd11,4'd11,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_11_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_0[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd14},
'{4'd00,4'd04,4'd08,4'd11,4'd02,4'd08,4'd04,4'd00},
'{4'd00,4'd04,4'd08,4'd10,4'd03,4'd10,4'd04,4'd00},
'{4'd04,4'd11,4'd02,4'd08,4'd02,4'd04,4'd00,4'd00},
'{4'd04,4'd11,4'd08,4'd08,4'd04,4'd00,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_6[7:0][7:0] = '{'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd14,4'd04,4'd11,4'd06,4'd06,4'd06,4'd04,4'd14},
'{4'd00,4'd04,4'd07,4'd06,4'd05,4'd06,4'd06,4'd04},
'{4'd00,4'd04,4'd10,4'd03,4'd10,4'd06,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd11,4'd07,4'd06,4'd11,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd05,4'd11,4'd04},
'{4'd00,4'd00,4'd04,4'd05,4'd04,4'd06,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_1_7[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd14},
'{4'd00,4'd11,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd08,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd02,4'd02,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd00,4'd08,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_4[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd11,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd11,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd11,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd11,4'd13,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd01,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd11,4'd11,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_2_4[7:0][7:0] = '{'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd13,4'd13,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd01,4'd00,4'd13},
'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd13,4'd13,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd00,4'd01,4'd00,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_12[7:0][7:0] = '{'{4'd00,4'd08,4'd08,4'd08,4'd08,4'd14,4'd00,4'd00},
'{4'd08,4'd08,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd08,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd14},
'{4'd00,4'd11,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd05,4'd00,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_4[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd05,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_11[7:0][7:0] = '{'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd05,4'd11,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd11,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd03,4'd00,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd03,4'd00,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd08,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd08,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd04,4'd04,4'd04,4'd04,4'd00,4'd00},
'{4'd00,4'd04,4'd08,4'd02,4'd02,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd11,4'd02,4'd08,4'd02,4'd04,4'd00},
'{4'd00,4'd04,4'd10,4'd03,4'd10,4'd02,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd11,4'd08,4'd08,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd08,4'd08,4'd02,4'd04,4'd00},
'{4'd00,4'd00,4'd04,4'd08,4'd04,4'd02,4'd04,4'd00}};

parameter bit [3:0] SpriteTableG_6_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd00,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd00,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_2[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd02,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_7[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd05,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd05,4'd11,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd06,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_3[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd13,4'd13,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd00,4'd13,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd11,4'd00,4'd01,4'd01,4'd01,4'd01},
'{4'd13,4'd13,4'd01,4'd00,4'd13,4'd13,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd13,4'd13,4'd13,4'd13},
'{4'd13,4'd00,4'd13,4'd00,4'd13,4'd13,4'd13,4'd13},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_3_14[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd11},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_1_2[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_14[7:0][7:0] = '{'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd03,4'd05,4'd05,4'd07,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd08,4'd02},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd08,4'd11,4'd08},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd11,4'd02},
'{4'd14,4'd14,4'd14,4'd00,4'd00,4'd08,4'd08,4'd00}};

parameter bit [3:0] SpriteTableG_3_3[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd13,4'd13,4'd01,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd01,4'd11,4'd13,4'd01,4'd11},
'{4'd13,4'd11,4'd01,4'd01,4'd11,4'd13,4'd01,4'd11},
'{4'd01,4'd13,4'd11,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd13,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd11,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd08,4'd01,4'd11,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_2_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd08,4'd02,4'd02,4'd08,4'd08,4'd08,4'd14,4'd14},
'{4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_1[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd14,4'd00,4'd11,4'd02,4'd08,4'd02,4'd00,4'd14},
'{4'd00,4'd00,4'd10,4'd03,4'd10,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd11,4'd02,4'd08,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_4[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd11,4'd11,4'd08},
'{4'd12,4'd01,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd03,4'd12,4'd11,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd03,4'd12,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd12,4'd12,4'd12,4'd08,4'd01,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_10_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd14,4'd14,4'd00,4'd00,4'd08,4'd00,4'd11,4'd06},
'{4'd14,4'd14,4'd14,4'd00,4'd00,4'd11,4'd11,4'd06},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd11,4'd07,4'd05},
'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd07,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd05,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_3[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd03},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd13,4'd12},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd01},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd11,4'd11,4'd08},
'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_11_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd06,4'd06,4'd00,4'd00,4'd00,4'd14,4'd00}};

parameter bit [3:0] SpriteTableG_0_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00}};

parameter bit [3:0] SpriteTableG_3_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd14,4'd14},
'{4'd00,4'd00,4'd00,4'd00,4'd14,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd14,4'd14,4'd00,4'd08,4'd02},
'{4'd00,4'd14,4'd14,4'd14,4'd00,4'd00,4'd08,4'd02}};

parameter bit [3:0] SpriteTableG_1_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_11[7:0][7:0] = '{'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd03,4'd05,4'd05,4'd07,4'd05,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_14[7:0][7:0] = '{'{4'd02,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd08,4'd08,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd02,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_10[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd02,4'd00,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_9_10[7:0][7:0] = '{'{4'd08,4'd00,4'd03,4'd00,4'd00,4'd14,4'd14,4'd14},
'{4'd08,4'd08,4'd14,4'd14,4'd14,4'd14,4'd14,4'd14},
'{4'd00,4'd08,4'd08,4'd08,4'd08,4'd14,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06}};

parameter bit [3:0] SpriteTableG_10_1[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd02,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd10,4'd03,4'd10,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_6_12[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd08,4'd08},
'{4'd00,4'd11,4'd11,4'd06,4'd06,4'd06,4'd03,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd03,4'd00},
'{4'd00,4'd00,4'd07,4'd05,4'd11,4'd06,4'd06,4'd00},
'{4'd00,4'd11,4'd07,4'd05,4'd11,4'd00,4'd03,4'd00},
'{4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_11_12[7:0][7:0] = '{'{4'd14,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd11,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd11,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd06,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_7_9[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd11,4'd06},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd07,4'd05},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd05,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_0_13[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd02},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd08,4'd08,4'd02}};

parameter bit [3:0] SpriteTableG_3_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_2_0[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd01,4'd01,4'd01,4'd00,4'd13,4'd13,4'd01,4'd01},
'{4'd01,4'd01,4'd01,4'd00,4'd13,4'd01,4'd01,4'd01},
'{4'd01,4'd01,4'd11,4'd00,4'd01,4'd01,4'd01,4'd01},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd13,4'd13,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd00},
'{4'd00,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11,4'd00}};

parameter bit [3:0] SpriteTableG_1_8[7:0][7:0] = '{'{4'd00,4'd14,4'd00,4'd00,4'd00,4'd00,4'd14,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd14,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd14},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd06,4'd00},
'{4'd00,4'd00,4'd11,4'd06,4'd06,4'd06,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd07,4'd05,4'd11,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd07,4'd05,4'd11,4'd00},
'{4'd00,4'd00,4'd00,4'd05,4'd00,4'd06,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_8_8[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd08,4'd11,4'd08,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_4_3[7:0][7:0] = '{'{4'd13,4'd13,4'd13,4'd01,4'd13,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd13,4'd01,4'd08,4'd13,4'd01,4'd11,4'd01,4'd11},
'{4'd01,4'd11,4'd13,4'd03,4'd03,4'd12,4'd11,4'd08},
'{4'd13,4'd13,4'd01,4'd03,4'd12,4'd13,4'd13,4'd01},
'{4'd13,4'd01,4'd01,4'd01,4'd12,4'd13,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd11,4'd13,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd08,4'd01,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_9_5[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd02,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd02,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_5_2[7:0][7:0] = '{'{4'd13,4'd03,4'd03,4'd12,4'd13,4'd13,4'd13,4'd01},
'{4'd03,4'd03,4'd12,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd03,4'd12,4'd12,4'd13,4'd01,4'd01,4'd01,4'd11},
'{4'd12,4'd13,4'd13,4'd11,4'd11,4'd01,4'd01,4'd11},
'{4'd12,4'd13,4'd01,4'd13,4'd13,4'd11,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd13,4'd01,4'd11},
'{4'd13,4'd01,4'd01,4'd01,4'd01,4'd01,4'd01,4'd11},
'{4'd01,4'd11,4'd11,4'd11,4'd11,4'd11,4'd11,4'd08}};

parameter bit [3:0] SpriteTableG_11_6[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd02,4'd00,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd08,4'd08,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd11,4'd08,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd08,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00}};

parameter bit [3:0] SpriteTableG_10_2[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd02,4'd02,4'd02,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd11,4'd08,4'd08,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd08,4'd00,4'd02,4'd00,4'd00,4'd00}};

logic [9:0] SpriteTableB;

parameter bit [7:0] SpritePaletteB[8:0] = '{8'd96, 8'd35, 8'd171, 8'd133, 8'd7, 8'd121, 8'd154, 8'd59, 8'd255};

	always_comb
	begin
		SpriteTableB = 10'd0;
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_6_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_11_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_7_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_0_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_1_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_5_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_10_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_6_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_10_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_6_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_4_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_9_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_5_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_10_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_3_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_1_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_8_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_2_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_9_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_5_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_10_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_6_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_7_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_0_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_3_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_8_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_4_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_2_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_6_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_11_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_0_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_1_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_10_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_9_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_6_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_11_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_0_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_4_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_9_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_5_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_10_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_5_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_8_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_4_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_2_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_9_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_5_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_11_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_7_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_3_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_1_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_8_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_4_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_2_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_9_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_11_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_7_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_0_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_3_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_1_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_8_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_2_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_11_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_6_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_11_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_7_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_0_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_9_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_5_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_10_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_7_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_3_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_8_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_4_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_2_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_5_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_10_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_7_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_3_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_1_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_8_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_4_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_2_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_9_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_6_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_11_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_7_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_0_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_3_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_1_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_8_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_10_2[Y_Index][X_Index];
		end
	end

parameter bit [3:0] SpriteTableB_7_3[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd05,4'd03,4'd03,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_6_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd02,4'd02},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd02,4'd02},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_11[7:0][7:0] = '{'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd04,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd02},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_0_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_0_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd04,4'd06}};

parameter bit [3:0] SpriteTableB_3_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_11[7:0][7:0] = '{'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd03,4'd04,4'd08,4'd08,4'd08,4'd02,4'd02},
'{4'd03,4'd03,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_8[7:0][7:0] = '{'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd04,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_10_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_0[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd05,4'd06,4'd03,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_5[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_5[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd06,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_6[7:0][7:0] = '{'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd04,4'd07,4'd04,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd02,4'd02,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd02,4'd02,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04,4'd07}};

parameter bit [3:0] SpriteTableB_0_4[7:0][7:0] = '{'{4'd07,4'd07,4'd00,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd00,4'd04,4'd00,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd07,4'd07,4'd07,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd00,4'd04,4'd00,4'd04,4'd07,4'd00,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_1_1[7:0][7:0] = '{'{4'd07,4'd07,4'd00,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_4_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_2[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_2_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_9_14[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd04,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_11[7:0][7:0] = '{'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd03,4'd03,4'd06,4'd04},
'{4'd08,4'd08,4'd04,4'd05,4'd06,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd02,4'd06,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd02,4'd02,4'd02,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd02,4'd02,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd02,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_3[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_6_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd07,4'd04,4'd00,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_11_0[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_5[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_1[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04}};

parameter bit [3:0] SpriteTableB_3_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd04,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_8_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd02,4'd02},
'{4'd07,4'd07,4'd07,4'd04,4'd04,4'd04,4'd02,4'd08},
'{4'd07,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_11[7:0][7:0] = '{'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd02,4'd03,4'd03,4'd05,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd03,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd04,4'd04,4'd06,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd04,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_14[7:0][7:0] = '{'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd06,4'd04},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd04,4'd06,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_14[7:0][7:0] = '{'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd02,4'd02,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd02,4'd02,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07}};

parameter bit [3:0] SpriteTableB_7_8[7:0][7:0] = '{'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_14[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd03,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd04,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_11[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd07,4'd04,4'd04,4'd04,4'd02,4'd08},
'{4'd07,4'd04,4'd04,4'd08,4'd08,4'd08,4'd02,4'd02},
'{4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd05,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05,4'd03}};

parameter bit [3:0] SpriteTableB_2_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd06,4'd06,4'd02,4'd02,4'd02,4'd08,4'd08},
'{4'd03,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_4[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_1[7:0][7:0] = '{'{4'd07,4'd07,4'd00,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_10_3[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_7_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd04,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_14[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd07,4'd04,4'd07,4'd07,4'd04}};

parameter bit [3:0] SpriteTableB_1_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_11[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd03,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd04,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_2_2[7:0][7:0] = '{'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd07}};

parameter bit [3:0] SpriteTableB_1_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd04,4'd06,4'd04,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_1[7:0][7:0] = '{'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd07,4'd00,4'd04,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd07,4'd00,4'd04,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_10_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_9_7[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_4[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd07,4'd07,4'd00},
'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd06},
'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd06},
'{4'd04,4'd04,4'd04,4'd04,4'd00,4'd06,4'd06,4'd02},
'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06}};

parameter bit [3:0] SpriteTableB_5_4[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd06,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd06,4'd07,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd07,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06}};

parameter bit [3:0] SpriteTableB_11_4[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_4[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd06,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd05,4'd06,4'd03,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_6_11[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd04,4'd07,4'd07,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd04,4'd07,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd06,4'd04,4'd00,4'd00,4'd00},
'{4'd07,4'd07,4'd07,4'd00,4'd04,4'd07,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_0_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_4_11[7:0][7:0] = '{'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd03,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd03,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd02,4'd02,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd02},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07}};

parameter bit [3:0] SpriteTableB_8_3[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd05,4'd03,4'd03,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_5_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd06,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_4_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd04,4'd07,4'd04,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd02,4'd08,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_1[7:0][7:0] = '{'{4'd04,4'd07,4'd00,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd00,4'd00,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd04,4'd00,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_5_7[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_3[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_4[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_3[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07},
'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07},
'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_8_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04}};

parameter bit [3:0] SpriteTableB_4_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04}};

parameter bit [3:0] SpriteTableB_2_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_9_8[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd04,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_0[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd05,4'd06,4'd03,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd04,4'd05,4'd06,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_13[7:0][7:0] = '{'{4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_6_2[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd02},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd06,4'd04},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd02,4'd04,4'd04},
'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd00,4'd04,4'd04},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd02,4'd04,4'd04},
'{4'd07,4'd00,4'd00,4'd02,4'd00,4'd04,4'd04,4'd04},
'{4'd00,4'd06,4'd02,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_11_14[7:0][7:0] = '{'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd04,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_11[7:0][7:0] = '{'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd02,4'd04,4'd04},
'{4'd07,4'd07,4'd07,4'd04,4'd02,4'd02,4'd08,4'd08},
'{4'd04,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04,4'd06}};

parameter bit [3:0] SpriteTableB_1_14[7:0][7:0] = '{'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd03,4'd04,4'd08,4'd08,4'd08,4'd02,4'd02},
'{4'd03,4'd03,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd07,4'd04,4'd07,4'd07,4'd04}};

parameter bit [3:0] SpriteTableB_4_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_9_11[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd02},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04},
'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd00,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd04,4'd00,4'd00,4'd00,4'd04,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_10_0[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd05,4'd06,4'd03,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd02},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04}};

parameter bit [3:0] SpriteTableB_7_14[7:0][7:0] = '{'{4'd07,4'd07,4'd04,4'd08,4'd02,4'd02,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd02,4'd04,4'd04},
'{4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_4[7:0][7:0] = '{'{4'd06,4'd02,4'd02,4'd02,4'd02,4'd02,4'd06,4'd00},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd02,4'd02,4'd01,4'd01,4'd01,4'd01,4'd01,4'd04},
'{4'd04,4'd04,4'd01,4'd01,4'd01,4'd01,4'd02,4'd04},
'{4'd01,4'd01,4'd01,4'd01,4'd01,4'd02,4'd04,4'd00},
'{4'd02,4'd02,4'd01,4'd01,4'd01,4'd04,4'd06,4'd04},
'{4'd04,4'd04,4'd01,4'd01,4'd01,4'd01,4'd04,4'd04},
'{4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd02,4'd00}};

parameter bit [3:0] SpriteTableB_0_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd02,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd06,4'd06,4'd04},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd04,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd06,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd02,4'd02,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_3[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd00,4'd04,4'd07,4'd07,4'd00},
'{4'd00,4'd00,4'd00,4'd00,4'd04,4'd07,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd06,4'd04,4'd00,4'd00,4'd00},
'{4'd07,4'd07,4'd07,4'd00,4'd04,4'd07,4'd07,4'd07},
'{4'd07,4'd07,4'd07,4'd00,4'd04,4'd04,4'd04,4'd04},
'{4'd07,4'd07,4'd07,4'd00,4'd04,4'd07,4'd07,4'd04},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_1_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd06,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_8_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_2[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd06,4'd06,4'd02},
'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_2_14[7:0][7:0] = '{'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd02,4'd03,4'd03,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd04,4'd04,4'd06,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_6[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd06,4'd04,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd06,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd04,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_3[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd06,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd07,4'd06,4'd06,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd07,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_11_7[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_5[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_0[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd05,4'd06,4'd03,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd08,4'd04,4'd08,4'd04,4'd08},
'{4'd04,4'd05,4'd06,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_6_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_8[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_1_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd02,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd06,4'd06,4'd04},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd04,4'd02,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_3_4[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd06,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd06,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd06,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd06,4'd07,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd00,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_2_4[7:0][7:0] = '{'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd07,4'd07,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd00,4'd04,4'd07},
'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd07,4'd07,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd04,4'd00,4'd04,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_9_12[7:0][7:0] = '{'{4'd08,4'd02,4'd02,4'd02,4'd02,4'd08,4'd08,4'd08},
'{4'd02,4'd02,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd02,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd04,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_4[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_7[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_11[7:0][7:0] = '{'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd08,4'd02,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd02,4'd02,4'd08,4'd08,4'd08,4'd08},
'{4'd02,4'd02,4'd02,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_9_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd06,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_6_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd04,4'd07,4'd04,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_6[7:0][7:0] = '{'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd04,4'd04,4'd07,4'd04,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_6[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd04,4'd06,4'd04,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_7[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd07,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_3[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd07,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd04,4'd00,4'd00,4'd00,4'd00},
'{4'd07,4'd07,4'd00,4'd04,4'd07,4'd07,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd07,4'd07,4'd07},
'{4'd07,4'd04,4'd07,4'd04,4'd07,4'd07,4'd07,4'd07},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_3_14[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_1_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_14[7:0][7:0] = '{'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd04,4'd04,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd05,4'd03},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd05,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd02,4'd04}};

parameter bit [3:0] SpriteTableB_3_3[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd07,4'd07,4'd00,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd00,4'd06,4'd07,4'd00,4'd06},
'{4'd07,4'd06,4'd00,4'd00,4'd06,4'd07,4'd00,4'd06},
'{4'd00,4'd07,4'd06,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd07,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd06,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd02,4'd00,4'd06,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_2_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd06,4'd06,4'd02,4'd02,4'd02,4'd08,4'd08},
'{4'd06,4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd06,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd05,4'd06,4'd03,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_5_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_4[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd06,4'd06,4'd02},
'{4'd04,4'd00,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd04,4'd04,4'd06,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd04,4'd04,4'd04,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd04,4'd04,4'd04,4'd02,4'd00,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_10_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd02,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_6_3[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd04,4'd04},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd07,4'd04},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd00},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd06,4'd06,4'd02},
'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_11_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_0_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04}};

parameter bit [3:0] SpriteTableB_3_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd03,4'd06}};

parameter bit [3:0] SpriteTableB_1_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_8_11[7:0][7:0] = '{'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd04,4'd04,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_14[7:0][7:0] = '{'{4'd06,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd03,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd03,4'd03,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd06,4'd04,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_2_10[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd06,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_9_10[7:0][7:0] = '{'{4'd02,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd02,4'd02,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd02,4'd02,4'd02,4'd02,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04,4'd07}};

parameter bit [3:0] SpriteTableB_10_1[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd06,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd08,4'd04,4'd08,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_6_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd02,4'd02},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd02,4'd02},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_11_12[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd04,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd07,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_7_9[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd07},
'{4'd08,4'd08,4'd08,4'd08,4'd04,4'd07,4'd04,4'd04}};

parameter bit [3:0] SpriteTableB_0_13[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd04,4'd04},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd03,4'd06},
'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd02,4'd03,4'd06}};

parameter bit [3:0] SpriteTableB_3_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_2_0[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd07,4'd00,4'd00},
'{4'd00,4'd00,4'd00,4'd04,4'd07,4'd00,4'd00,4'd00},
'{4'd00,4'd00,4'd06,4'd04,4'd00,4'd00,4'd00,4'd00},
'{4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04,4'd04},
'{4'd04,4'd07,4'd07,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd04},
'{4'd04,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06,4'd04}};

parameter bit [3:0] SpriteTableB_1_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd08,4'd04,4'd07,4'd07,4'd07,4'd04},
'{4'd08,4'd08,4'd04,4'd07,4'd04,4'd07,4'd04,4'd08}};

parameter bit [3:0] SpriteTableB_8_8[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd04,4'd03,4'd05,4'd03,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_4_3[7:0][7:0] = '{'{4'd07,4'd07,4'd07,4'd00,4'd07,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd07,4'd00,4'd02,4'd04,4'd00,4'd06,4'd00,4'd06},
'{4'd00,4'd06,4'd04,4'd04,4'd04,4'd04,4'd06,4'd02},
'{4'd07,4'd07,4'd00,4'd04,4'd04,4'd07,4'd07,4'd00},
'{4'd07,4'd00,4'd00,4'd00,4'd04,4'd07,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd06,4'd07,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd02,4'd00,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_9_5[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd06,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd06,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd04,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_5_2[7:0][7:0] = '{'{4'd04,4'd04,4'd04,4'd04,4'd07,4'd07,4'd07,4'd00},
'{4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd04,4'd04,4'd04,4'd07,4'd00,4'd00,4'd00,4'd06},
'{4'd04,4'd07,4'd07,4'd06,4'd06,4'd00,4'd00,4'd06},
'{4'd04,4'd07,4'd00,4'd07,4'd07,4'd06,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd07,4'd00,4'd06},
'{4'd07,4'd00,4'd00,4'd00,4'd00,4'd00,4'd00,4'd06},
'{4'd00,4'd06,4'd06,4'd06,4'd06,4'd06,4'd06,4'd02}};

parameter bit [3:0] SpriteTableB_11_6[7:0][7:0] = '{'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd04,4'd06,4'd04,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd03,4'd03,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd05,4'd03,4'd06,4'd04,4'd08},
'{4'd08,4'd08,4'd04,4'd03,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd08,4'd08,4'd04,4'd08,4'd08,4'd08,4'd08}};

parameter bit [3:0] SpriteTableB_10_2[7:0][7:0] = '{'{4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08,4'd08},
'{4'd08,4'd08,4'd04,4'd04,4'd04,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd03,4'd06,4'd06,4'd06,4'd04,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd05,4'd03,4'd03,4'd04,4'd08,4'd08},
'{4'd08,4'd04,4'd03,4'd04,4'd06,4'd04,4'd08,4'd08}};

assign SpriteR = SpritePaletteR[SpriteTableR];
assign SpriteG = SpritePaletteG[SpriteTableG];
assign SpriteB = SpritePaletteB[SpriteTableB];

endmodule
