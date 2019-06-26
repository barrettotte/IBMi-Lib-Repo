     FFLASHCARDSCF   E             WORKSTN
      /free
       // Hiragana flashcards

       // lol.... v7r3 ?????
       //dcl-f flashcards wrkstn;
       exfmt flshcrdfmt;
       field1 = %ucs2('1234');
       write flshcrdfmt;
       exfmt flshcrdfmt;
       *INLR = *ON;
      /end-free