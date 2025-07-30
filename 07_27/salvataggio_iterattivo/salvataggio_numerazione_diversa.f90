program scrittura_ordinata_files

implicit none

integer :: i
character(len=100) :: filename


do i =1,3

write(filename,'(A,I0,A)') 'data/output',i,'.txt'

open(unit=10+i, file=trim(filename))
close(10+i)

end do



end program scrittura_ordinata_files
