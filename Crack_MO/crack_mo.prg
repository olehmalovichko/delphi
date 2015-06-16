
PROCEDURE EV_BROW

    SCROLL()
    DEVPOS(1, 1)
    DevOut('-----------------------------------------------------------------')
    DEVPOS(2, 1)
    DevOut('„¥ª®¤¥à ä ©«®¢  PS_S_PAS.DBF PS_S_POL.DBF ')     
    DEVPOS(3, 1)
    DevOut('-== Crack by Oleg Malovicko ==-')     
    DEVPOS(4, 1)
    DevOut('-----------------------------------------------------------------')
    DEVPOS(5, 1)

      USE PS_S_PAS

 do while !eof()

      L4 := SPACE(10)
      MEMVAR->PR1 := .F.
      MEMVAR->PR2 := .F.
   
      L5 := "Š®¬¯«¥ªá ¯à®£à ¬¬ "+CHR(34)+;
         "Œˆˆ - Ž’„…‹…ˆŸ"+CHR(34)+" ~à¨¢ â ­ª~, (c)"

      PR__ := CHARNOT(CHARSWAP(CHARMIRR(L5)))


           

      repl parol with CRYPT(PS_S_PAS->PAROL, PR__)
      repl fio_op with CRYPT(PS_S_PAS->FIO_OP, PR__)
      repl dat_p with CRYPT(PS_S_PAS->dat_p, PR__)
      repl login_id with CRYPT(PS_S_PAS->login_id, PR__)
      repl kod_grup with CRYPT(PS_S_PAS->kod_grup, PR__)
      repl pr_a with CRYPT(PS_S_PAS->PR_A, PR__)

skip
endd


    USE 
    USE PS_S_POL
do while !eof()

    repl parol with CRYPT(PS_S_POL->PAROL, PR__)
    repl kod_komp with CRYPT(PS_S_POL->kod_komp, PR__)
    repl dostup_f with CRYPT(PS_S_POL->dostup_f, PR__)

skip
endd

    DEVPOS(6, 1)
    DevOut(' - Ok -')     
