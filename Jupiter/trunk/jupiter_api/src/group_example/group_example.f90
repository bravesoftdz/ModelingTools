PROGRAM GROUP_EXAMPLE
USE DATATYPES
USE GLOBAL_DATA, ONLY: LENDNAM
USE UTILITIES
IMPLICIT NONE
!
INTEGER :: I,IERR,INUNIT,IOUT,KGPS,KOBS,MORE
TYPE (LLIST), POINTER :: LLPTRG, LLPTRM, LTAIL
CHARACTER (LEN=5),       DIMENSION(5) :: SFLAG
DOUBLE PRECISION,        DIMENSION(5) :: STATI, OBSVAL
CHARACTER (LEN=LENDNAM), DIMENSION(5) :: OBSNAM
CHARACTER (LEN=9),       DIMENSION(5) :: GROUPNAM
CHARACTER(LEN=40),       DIMENSION(0) :: NOCOL
!
!   Format statements
100 FORMAT('OBSNAME',2X,'GROUPNAME',2X,'  OBSVALUE  ',  &
           2X,'STATFLAG',2X,'STATISTIC', &
         /,'-------',2x,'---------',2X,'------------',  &
           2X,'--------',2X,'---------')
120 FORMAT(A7,2X,A9,2X,G12.5,4X,A,3X,G9.2)
!
NULLIFY(LLPTRG,LLPTRM,LTAIL)
INUNIT=7
IOUT=8
KGPS=0
KOBS=0
!
OPEN(INUNIT,FILE='gp.in',status='OLD')
OPEN(IOUT,FILE='gp.out',status='REPLACE')
!
!   Read input blocks
CALL UTL_READBLOCK(0,'OBSERVATION_GROUPS',NOCOL,INUNIT,IOUT,  &
                   'GROUPNAME',.TRUE.,LLPTRG,LTAIL,KGPS)
CALL UTL_READBLOCK(0,'OBSERVATION_DATA',NOCOL,INUNIT,IOUT,  &
                   'OBSNAME',.TRUE.,LLPTRM,LTAIL,KOBS)
!
!   Apply group attributes as defaults for group members
CALL UTL_GROUPLIST('DEFOBS      ',LLPTRG,IOUT,LLPTRM,KGPS,KOBS)
!
!   Populate arrays
CALL UTL_FILTERLIST(LLPTRM,IOUT,'OBSNAME',5,IERR,OBSNAM,MORE)
CALL UTL_FILTERLIST(LLPTRM,IOUT,'OBSVALUE',5,IERR,OBSVAL,MORE)
CALL UTL_FILTERLIST(LLPTRM,IOUT,'STATFLAG',5,IERR,SFLAG,MORE)
CALL UTL_FILTERLIST(LLPTRM,IOUT,'STATISTIC',5,IERR,STATI,MORE)
CALL UTL_FILTERLIST(LLPTRM,IOUT,'GROUPNAME',5,IERR,GROUPNAM,MORE)
!
!   Write output
WRITE(IOUT,100)
DO I=1,KOBS
  WRITE(IOUT,120)OBSNAM(I),GROUPNAM(I),OBSVAL(I),SFLAG(I),STATI(I)
ENDDO
STOP
END PROGRAM GROUP_EXAMPLE