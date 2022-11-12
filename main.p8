
function _init()
    X=2
    Y=2
    I=0
    Velocity_X=2
    Velocity_Y=1
    titolo = "dio merda"
    -- music(0,3)
   
    -- collision
    palline = {
        X = nil,
        Y = nil,
        time_to_live = 30,
        draw = function(X,Y)
            circfill(X+rnd(50),Y+rnd(20),rnd(10),flr(rnd(10)))
        end
    }

end



function _draw()
    cls()
   
    print(titolo,(X),(Y),7)
    rect(0,0,127,127,7)
    
end

function _update()
    text_offset = #titolo*3

    if(X>=flr(125-text_offset) or X<0)  then 
        Velocity_X = -1*(Velocity_X)

        if(X>=125-text_offset) then
            X=124-text_offset
        end

        if(X<=0)then
            X = 0
        end
        
        sfx(8)   
    end

    if(Y>=125 or Y<0) then
        Velocity_Y= -1*(Velocity_Y)
        if(Y>=125)then
            Y=124
        end

        if(Y<=0)then
            Y = 0
        end
        sfx(8)
    end

    X = X + Velocity_X
    Y = Y + Velocity_Y
    I = I + 1

end

function timer(second)
    last_time = time()


    

    return timesup
end


function draw_collisions(n_palline,X,Y)
    for i=0, n_palline do
        circfill(X+rnd(50),Y+rnd(20),rnd(10),flr(rnd(10)))
    end



end





