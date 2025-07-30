program griglia
implicit none
integer, parameter :: rp = selected_real_kind(15, 307)
integer :: k, n, j
real(rp)  ::  lz, z0
real(rp), allocatable, dimension(:) :: zf, zh
real(rp), dimension(3) :: gr = [1.0_rp, 2.0_rp, 3.0_rp]
character(len=100) :: filename

n = 100 ! numero punti lungo z

lz = 1 !lunghezza dominio

allocate(zf(0:n+1))
allocate(zh(0:n+1))
call system('mkdir -p data') 
zf(0) = 0.0_rp
zh(0) = 0.0_rp
do j= 1,3

        write(filename,'(A,I0,A)')'data/gr_',j,'_.dat'
        open(unit=10+j,file=trim(filename), status ='replace', action ='write', form = 'formatted')
do k = 1,n

    z0  = (k-0.)/(1.*n)
    call gridpoint(gr(j),z0,zf(k))
    call gridpoint1(gr(j),z0,zh(k))!correzione per centrare i punti
    zf(k) = zf(k)*lz
    zh(k) = zh(k)*lz
    
        write(10+j, '(I8, 2X, F15.8, 2X, F15.8, 2X, F15.8)') k, z0, zf(k), zh(k)


end do

        close(10+j)
end do

deallocate(zf)
deallocate(zh)




contains

subroutine gridpoint(alpha,z0,z)
real(rp), intent(in) :: alpha, z0
real(rp), intent(out) :: z

 z = 0.5*(1.+tanh((z0-0.5)*alpha)/tanh(alpha/2.))

end subroutine gridpoint

subroutine gridpoint1(alpha,z0,z)
real(rp), intent(in) :: alpha, z0
real(rp), intent(out) :: z

 z = 0.5*(1.+erf((z0-0.5)*alpha)/erf(alpha/2.))

end subroutine gridpoint1

end program griglia
