program sum_Example  !camelCase

        implicit none

        real :: v(10) = [1,2,3,4,5,6,7,8,9,10]

        integer :: i,summ


        do i = 1,9  ! Array reference at (1) out of bounds (11 > 10) in loop

        summ = v(i) + v(i+1)

        print*, "The sum is: ", summ

        end do
        
        !Correct version      

        summ = 0

        do i = 1,10

        summ = summ + v(i)

        end do

        print*, "The currect sum is: ", summ

        end program sum_Example
