require "spec"
require "crystal/compiler_rt/shift"
require "./spec_helper"

# Ported from https://github.com/llvm/llvm-project/blob/ce59ccd04023cab3a837da14079ca2dcbfebb70c/compiler-rt/test/builtins/Unit/lshrti3_test.c

it ".__lshrti3" do
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 0).should eq make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 1).should eq make_ti(0x7F6E5D4C3B2A190Au64, 0xFF6E5D4C3B2A190Au64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 2).should eq make_ti(0x3FB72EA61D950C85u64, 0x7FB72EA61D950C85u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 3).should eq make_ti(0x1FDB97530ECA8642u64, 0xBFDB97530ECA8642u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 4).should eq make_ti(0x0FEDCBA987654321u64, 0x5FEDCBA987654321u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 28).should eq make_ti(0x0000000FEDCBA987u64, 0x6543215FEDCBA987u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 29).should eq make_ti(0x00000007F6E5D4C3u64, 0xB2A190AFF6E5D4C3u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 30).should eq make_ti(0x00000003FB72EA61u64, 0xD950C857FB72EA61u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 31).should eq make_ti(0x00000001FDB97530u64, 0xECA8642BFDB97530u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 32).should eq make_ti(0x00000000FEDCBA98u64, 0x76543215FEDCBA98u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 33).should eq make_ti(0x000000007F6E5D4Cu64, 0x3B2A190AFF6E5D4Cu64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 34).should eq make_ti(0x000000003FB72EA6u64, 0x1D950C857FB72EA6u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 35).should eq make_ti(0x000000001FDB9753u64, 0x0ECA8642BFDB9753u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 36).should eq make_ti(0x000000000FEDCBA9u64, 0x876543215FEDCBA9u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 60).should eq make_ti(0x000000000000000Fu64, 0xEDCBA9876543215Fu64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 61).should eq make_ti(0x0000000000000007u64, 0xF6E5D4C3B2A190AFu64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 62).should eq make_ti(0x0000000000000003u64, 0xFB72EA61D950C857u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 63).should eq make_ti(0x0000000000000001u64, 0xFDB97530ECA8642Bu64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 64).should eq make_ti(0x0000000000000000u64, 0xFEDCBA9876543215u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 65).should eq make_ti(0x0000000000000000u64, 0x7F6E5D4C3B2A190Au64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 66).should eq make_ti(0x0000000000000000u64, 0x3FB72EA61D950C85u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 67).should eq make_ti(0x0000000000000000u64, 0x1FDB97530ECA8642u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 68).should eq make_ti(0x0000000000000000u64, 0x0FEDCBA987654321u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 92).should eq make_ti(0x0000000000000000u64, 0x0000000FEDCBA987u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 93).should eq make_ti(0x0000000000000000u64, 0x00000007F6E5D4C3u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 94).should eq make_ti(0x0000000000000000u64, 0x00000003FB72EA61u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 95).should eq make_ti(0x0000000000000000u64, 0x00000001FDB97530u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 96).should eq make_ti(0x0000000000000000u64, 0x00000000FEDCBA98u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 97).should eq make_ti(0x0000000000000000u64, 0x000000007F6E5D4Cu64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 98).should eq make_ti(0x0000000000000000u64, 0x000000003FB72EA6u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 99).should eq make_ti(0x0000000000000000u64, 0x000000001FDB9753u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 100).should eq make_ti(0x0000000000000000u64, 0x000000000FEDCBA9u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 124).should eq make_ti(0x0000000000000000u64, 0x000000000000000Fu64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 125).should eq make_ti(0x0000000000000000u64, 0x0000000000000007u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 126).should eq make_ti(0x0000000000000000u64, 0x0000000000000003u64)
  __lshrti3(make_ti(0xFEDCBA9876543215u64, 0xFEDCBA9876543215u64), 127).should eq make_ti(0x0000000000000000u64, 0x0000000000000001u64)
end