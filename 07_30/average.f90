program averagee

        implicit none

        real :: v(10) = [1,2,3,4,5,6,7,8,9,10]
        real :: mean
        real :: summ = 0
        integer :: i


        do i = 1,10

        summ = v(i)+summ

        end do

        mean = summ / 10

        print*, "The mean is: ", mean 

        end program averagee
