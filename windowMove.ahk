+#Up::
   WinGetActiveTitle, Title
   WinRestore, %Title%
   ;WinMove, %Title%,, X1, Y1, Width, Height
   WinGetPos, ,, WindowWidth, WindowHeight, %Title%
   Loop {
   WinMove, %Title%,, , , WindowWidth - 1, WindowHeight - 1,
   sleep 1 ; wait 1 millisecond
   WinMove, %Title%,, , , WindowWidth, WindowHeight
   sleep 1000 ; restore window size and wait one second
   }
return