program floating_point_error
    implicit none
    real :: x, y, z
    
    x = 0.1
    y = 0.2
    z = x + y
    
    ! Stampa con 8 cifre decimali (per mostrare l'errore)
    print '(F20.20)', z  ! Formatto fisso con 20 caratteri totali e 8 decimali
    
    ! Alternativa con formato scientifico (mostra ancora meglio l'errore)
    print '(E20.10)', z ! Formatto scientifico con 10 cifre decimali
end program floating_point_error
