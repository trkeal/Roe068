
'Central Redirect 1.bi
'Central Redirect Module ( 1 of 2 )
'
'Created 2021 by T.R.Keal
'Released under the Gnu Public License "2.2"
'( Attribution, Education / Charity )
'
'Please review the Gnu Public License, Thank you. 
'The GPL can be located online at http://www.gnu.org/copyleft/gpl.html

redim shared debug_table( any ) as names_type

declare sub central_debug ( target as string =  "" )

declare sub central overload( target as string = "" )