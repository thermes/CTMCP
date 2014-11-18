declare FastPascal AddList ShiftLeft ShiftRight
fun {FastPascal N}
   if N == 1 then
      [1]
   else L in
      L={FastPascal N-1}
      {AddList {ShiftLeft L} {ShiftRight L}}
   end
end

fun {ShiftLeft L}
   case L of H|T then
      H|{ShiftLeft T}
   else
      [0]
   end
end

fun {ShiftRight L}
   0|L
end

fun {AddList L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
	 H1+H2|{AddList T1 T2}
      end
   else
      nil
   end
end

{Browse {FastPascal 20}}
{Browse {FastPascal 30}}
