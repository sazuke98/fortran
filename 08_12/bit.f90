program bit
    implicit none
    integer, allocatable :: c(:), f(:)
    integer :: a, remainder, n, i, bits_needed
    
    print*, "Enter an integer to convert it in base 2: "
    read*, a
    
    if (a == 0) then
        allocate(f(1))
        f(1) = 0
    else
        ! Calculate the number of necessary bits
        bits_needed = 0
        n = abs(a)  ! managment of negative values
        do while (n > 0)
            bits_needed = bits_needed + 1
            n = n / 2
        end do
        
        allocate(c(bits_needed))
        
        ! (LSB first)
        n = abs(a)
        do i = 1, bits_needed
            remainder = mod(n, 2)
            n = n / 2
            c(i) = remainder
        end do
        
        ! MSB first
        allocate(f(bits_needed))
        do i = 1, bits_needed
            f(i) = c(bits_needed - i + 1)
        end do
        
        deallocate(c)
    end if
    
    print*, "Binary is: ", f
    
    if (allocated(f)) deallocate(f)
end program bit
