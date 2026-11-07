% Task 1: Area and perimeter.
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Base is one side; SideB and SideC are the other two sides.
% Height is the vertical height corresponding to Base.
triangle(Base, Height, SideB, SideC, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is Base + SideB + SideC.

% Task 2: Sample dataset (no credentials are supplied in the document).
user(user1, pass123).

login :-
    login_attempts(3).

login_attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
login_attempts(Attempts) :-
    Attempts > 0,
    write('Username: '),
    read(Username),
    write('Password: '),
    read(Password),
    ( user(Username, Password) ->
        write('Login Successful'), nl
    ;
        write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        login_attempts(Remaining)
    ).