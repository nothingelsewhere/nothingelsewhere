\
\ Ethan
\ 
\
\ Copyright © 2021 jedi958 all rights reserved.
\
\ @author: Ethan Goh
\ @date: 27 Nov 2021
\
\
: nile-tour-menu ( -- "s" ) 
    {{
        "Itinery" 
        "Back to Main Menu"
    }} mk-menu
;

: nile-tour ( -- "s" )
    nile-tour-menu ctx{ nt-menu }
    q{  
        <img 
            src="https://cdn.pixabay.com/photo/2018/11/09/11/56/egypt-3804407_1280.jpg"
            width="450px"
            style="border-radius:6px;border:1px solid #AAA"
        >
        <h1>River Nile Tour</h1>
        <p>
            Cruise River Nile on The Nile Queen. 
            Guests will see breathtaking views while sailing on the Nile where you will stop for day trips to see ancient ruins, archaeological treasures, and ancient villages.
        </p>
        <p>
            Select a menu item or ask me any question about Nile.
        </p>
        #{nt-menu}
    }q

;

: nile-tour-itinery ( -- "s" )
    nile-tour-menu ctx{ nt-menu }
    q{  
        <img 
            src="https://cdn.pixabay.com/photo/2014/06/27/19/57/river-nile-378495_1280.jpg"
            width="450px"
            style="border-radius:6px;border:1px solid #AAA"
        >
        <h1>River Nile Tour</h1>
        <p>
            <li>The experience begins with pickup from your Luxor hotel at around 6:00 PM and transfer down to the River Nile.</li> 
            <li>Hop onboard your boat for the evening and set sail along one of the most famous rivers in the world.</li>
            <li>Enjoy a delicious meal while listening to the sound of traditional Egyptian music.</li>
            <li>After dinner, watch a mesmerizing belly dance show as well as entertaining folk performances.</li>
            <li>Cruise ends around 1030pm and return to hotel by 1130pm.

            <p>Select a menu item or ask me any question about Nile Tour.</p>
        </p>
        #{nt-menu}
    }q

;

Q: Nile Cruise
A: ${ nile-tour }
K: $clear what-is-included-key
--

Q: Itinery
A: ${ nile-tour-itinery }
--

Q: Back to Main Menu
A: ${main-menu}
--

@: keyword
keyword: belly folk traditional dance music dinner lunch breakfast meal

search: what-is-included
{{
"Breakfast is not included"
"Lunch is not included"
"Dinner is included onboard"
"Meal (dinner) will be served on board"
"Belly dance and traditional folk music performance will be available on board"
}} +what-is-included

room: what-is-included-key

    Q: $x.@keyword
    A: ${ $x what-is-included }
    --

end-room
