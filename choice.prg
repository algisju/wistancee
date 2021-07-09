   #define AL_SAVE         1
   #define AL_CANCEL      2
   #define AL_CONT         3

   // Define an array of options
   aOptions := {"Save", "Don't Save", "Continue"}

   // Display the dialog box and get the user's selection
   nChoice  := Alert("File has changed...", aOptions)

   // Handle the user's request
   DO CASE
   CASE nChoice == AL_SAVE
      ? "Save"
   CASE nChoice == AL_CANCEL
      ? "Don't Save"
   CASE nChoice == AL_CONT
      ? "Continue"
   OTHERWISE
      ? "Escape"
   ENDCASE
   //
   RETURN
