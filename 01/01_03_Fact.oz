declare
fun {Fact N}
   if N == 0 then
      1
   else
      N * {Fact N-1}
   end
end

{Browse {Fact 10}}
{Browse {Fact 100}}
