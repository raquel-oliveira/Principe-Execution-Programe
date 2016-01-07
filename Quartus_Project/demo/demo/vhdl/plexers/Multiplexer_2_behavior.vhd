--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : ARM_V2                                                       ==
--== Component : Multiplexer_2                                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Multiplexer_2 IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   make_mux : PROCESS( Enable,
                       MuxIn_0,
                       MuxIn_1,
                       Sel )
   BEGIN
      IF (Enable = '0') THEN
         MuxOut <= '0';
                        ELSE
         CASE (Sel) IS
            WHEN    '0'  => MuxOut <= MuxIn_0;
            WHEN OTHERS  => MuxOut <= MuxIn_1;
         END CASE;
      END IF;
   END PROCESS make_mux;
END PlatformIndependent;
