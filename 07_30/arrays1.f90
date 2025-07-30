program array

        implicit none

        real :: squares(10)
        integer :: i,summ

        do i = 1, 10

        squares(i) = i*i

        end do
        summ = 0
        do i = 1, 10

        summ = squares(i) + squares(i+1)

        end do

        print*,"Squares: ",squares
        print*,"Summ: ",summ

        end program array
