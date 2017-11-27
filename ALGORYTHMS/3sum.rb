p S = [4, 9, 5445, 54, 333, 999, 878, 444, 65, 222, 622, 666, 1, 111, 676, 7, 8, 44, 4, 899, 55, 55, 6]
p S.sort
 for i in (0...S.size-3)
    p a = S[i];
    strt = i+1;
    end_ = S.size-1;
    while (strt < end_) do
       p b = S[strt]
       p c = S[end_];
       if (a+b+c == 0)
          puts a, b, c
          # Continue search for all triplet combinations summing to zero.
          if (b == S[strt + 1])
             strt = strt + 1;
          else
             end_ = end_ - 1;
          end
       elsif (a+b+c > 0)
          end_ = end_ - 1;
       else
          strt = strt + 1;
       end
       puts "--------"
    end
 end