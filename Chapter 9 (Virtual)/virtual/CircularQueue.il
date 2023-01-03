
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly CircularQueue
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module CircularQueue.exe
// MVID: {F5031AA1-117F-4AEB-8EB4-4C2B2A2496F4}
.custom instance void System.Runtime.CompilerServices.RefSafetyRulesAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x04E90000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed beforefieldinit Microsoft.CodeAnalysis.EmbeddedAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method EmbeddedAttribute::.ctor

} // end of class Microsoft.CodeAnalysis.EmbeddedAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.RefSafetyRulesAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 02 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 00 )                               // rited.
  .field public initonly int32 Version
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 A_1) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 System.Runtime.CompilerServices.RefSafetyRulesAttribute::Version
    IL_000d:  ret
  } // end of method RefSafetyRulesAttribute::.ctor

} // end of class System.Runtime.CompilerServices.RefSafetyRulesAttribute

.class private auto ansi beforefieldinit CircularQueue`1<T>
       extends [mscorlib]System.Object
{
  .field private initonly !T[] items
  .field private int32 count
  .field private int32 deqAt
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 capacity) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  newarr     !T
    IL_000d:  stfld      !0[] class CircularQueue`1<!T>::items
    IL_0012:  ret
  } // end of method CircularQueue`1::.ctor

  .method public hidebysig instance !T  Dequeue() cil managed
  {
    // Code size       101 (0x65)
    .maxstack  4
    .locals init (!T V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 class CircularQueue`1<!T>::count
    IL_0006:  ldc.i4.0
    IL_0007:  ble.s      IL_005a

    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32 class CircularQueue`1<!T>::count
    IL_0010:  ldc.i4.1
    IL_0011:  sub
    IL_0012:  stfld      int32 class CircularQueue`1<!T>::count
    IL_0017:  ldarg.0
    IL_0018:  ldfld      !0[] class CircularQueue`1<!T>::items
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 class CircularQueue`1<!T>::deqAt
    IL_0023:  ldelem     !T
    IL_0028:  ldarg.0
    IL_0029:  ldfld      !0[] class CircularQueue`1<!T>::items
    IL_002e:  ldarg.0
    IL_002f:  ldfld      int32 class CircularQueue`1<!T>::deqAt
    IL_0034:  ldloca.s   V_0
    IL_0036:  initobj    !T
    IL_003c:  ldloc.0
    IL_003d:  stelem     !T
    IL_0042:  ldarg.0
    IL_0043:  ldarg.0
    IL_0044:  ldfld      int32 class CircularQueue`1<!T>::deqAt
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  ldarg.0
    IL_004c:  ldfld      !0[] class CircularQueue`1<!T>::items
    IL_0051:  ldlen
    IL_0052:  conv.i4
    IL_0053:  rem
    IL_0054:  stfld      int32 class CircularQueue`1<!T>::deqAt
    IL_0059:  ret

    IL_005a:  ldstr      "Queue empty"
    IL_005f:  newobj     instance void [mscorlib]System.ApplicationException::.ctor(string)
    IL_0064:  throw
  } // end of method CircularQueue`1::Dequeue

  .method public hidebysig instance void 
          Enqueue(!T x) cil managed
  {
    // Code size       76 (0x4c)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 class CircularQueue`1<!T>::count
    IL_0006:  ldarg.0
    IL_0007:  ldfld      !0[] class CircularQueue`1<!T>::items
    IL_000c:  ldlen
    IL_000d:  conv.i4
    IL_000e:  bge.s      IL_0041

    IL_0010:  ldarg.0
    IL_0011:  ldfld      !0[] class CircularQueue`1<!T>::items
    IL_0016:  ldarg.0
    IL_0017:  ldfld      int32 class CircularQueue`1<!T>::deqAt
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 class CircularQueue`1<!T>::count
    IL_0022:  add
    IL_0023:  ldarg.0
    IL_0024:  ldfld      !0[] class CircularQueue`1<!T>::items
    IL_0029:  ldlen
    IL_002a:  conv.i4
    IL_002b:  rem
    IL_002c:  ldarg.1
    IL_002d:  stelem     !T
    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 class CircularQueue`1<!T>::count
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stfld      int32 class CircularQueue`1<!T>::count
    IL_0040:  ret

    IL_0041:  ldstr      "Queue full"
    IL_0046:  newobj     instance void [mscorlib]System.ApplicationException::.ctor(string)
    IL_004b:  throw
  } // end of method CircularQueue`1::Enqueue

} // end of class CircularQueue`1

.class private auto ansi beforefieldinit TestCircularQueue
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       84 (0x54)
    .maxstack  3
    IL_0000:  ldc.i4.2
    IL_0001:  newobj     instance void class CircularQueue`1<float64>::.ctor(int32)
    IL_0006:  dup
    IL_0007:  ldc.r8     1.2
    IL_0010:  callvirt   instance void class CircularQueue`1<float64>::Enqueue(!0)
    IL_0015:  dup
    IL_0016:  ldc.r8     3.3999999999999999
    IL_001f:  callvirt   instance void class CircularQueue`1<float64>::Enqueue(!0)
    IL_0024:  dup
    IL_0025:  callvirt   instance !0 class CircularQueue`1<float64>::Dequeue()
    IL_002a:  call       void [mscorlib]System.Console::WriteLine(float64)
    IL_002f:  dup
    IL_0030:  ldc.r8     5.5999999999999996
    IL_0039:  callvirt   instance void class CircularQueue`1<float64>::Enqueue(!0)
    IL_003e:  dup
    IL_003f:  callvirt   instance !0 class CircularQueue`1<float64>::Dequeue()
    IL_0044:  call       void [mscorlib]System.Console::WriteLine(float64)
    IL_0049:  callvirt   instance !0 class CircularQueue`1<float64>::Dequeue()
    IL_004e:  call       void [mscorlib]System.Console::WriteLine(float64)
    IL_0053:  ret
  } // end of method TestCircularQueue::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method TestCircularQueue::.ctor

} // end of class TestCircularQueue


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
