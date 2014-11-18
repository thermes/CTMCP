declare
fun {Fact N}
   if N == 0 then
      1
   else
      N * {Fact N-1}
   end
end

fun {Comb N K}
   {Fact N} div ({Fact K} * {Fact N-K})
end

{Browse {Comb 10 3}}
