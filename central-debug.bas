'Central Debug.bas
'"Central Debug" realtime jump tracker FreeBASIC source code
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License 2.0
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

#define central_debug_lib
 
'#include once ".\inc\names.bi"
#include once ".\inc\const.bi"

#include once "file.bi"

#include once ".\inc\central-debug.bi"
		
	kill ".\debug\central.log"
	
sub central_debug ( target as string =  "" )
	
	Central_Count += 1
	
	redim preserve Central_History( 0 to Central_Count )
	Central_History( Central_Count ) = target
	
	Central_History( 0 ) = command$( 0 )
	
	dim as integer filemode = freefile
	dim as string filename = ".\debug\central.log"
	dim as string buffer = string$( 0, 0 )
	
	if open(filename for binary as #filemode) then
		close #filemode
		exit sub
	end if
	
	dim as integer index = 0
	
	for index = 0 to Central_Count step 1
		buffer += "/" + Central_History( index )
	next index
	buffer += crlf
	
	put #filemode, lof( filemode ) + 1, buffer
	
	close #filemode
	
end sub

sub central_close_out ( target as string =  "" )
	
	Central_Count -= 1	
	redim preserve Central_History( 0 to Central_Count )
	
end sub