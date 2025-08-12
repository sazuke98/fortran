program SumOfEvenNumbers

        implicit none

        integer :: i, summ 
        integer :: v(20) = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]


        summ = 0

        do i = 1,size(v)

        if (mod(v(i),2) == 0) then

        summ = summ + v(i)
        end if

        end do

        print*, "The sum of even numbers is: ", summ

end program SumOfEvenNumbers
