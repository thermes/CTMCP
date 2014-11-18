declare
fun lazy {Ints N}
   N|{Ints N+1}
end

L={Ints 0}

{Browse L}

{Browse L.1}

case L of A|B|C|_ then
   {Browse A+B+C}
end
