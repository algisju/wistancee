//   SET COLOR TO gr+/b,r+/n
   SET MESSAGE TO 23    // This is necessary.
   CLEAR SCREEN

   @ 3,14 PROMPT " one   "  MESSAGE {||UDF("Message 1 BlaH        ")}
   @ 4,14 PROMPT " two   "  MESSAGE {||UDF("Message 2 YakkyYakky  ")}
   @ 5,14 PROMPT " three "  MESSAGE {||UDF("Message 3 Whatever    ")}

   MENU TO test

   FUNCTION UDF(cParm)
   cOldColor := SetColor("w+/n")
   @ 22,1 SAY cParm        // Must be different row than the
                           // SET MESSAGE TO nRow
   SetColor(cOldColor)
   RETURN ""   
