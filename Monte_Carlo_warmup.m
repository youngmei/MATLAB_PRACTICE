function Monte_Carlo_warmup(T,H,Warmup)
global L;
global SPIN; 
%Warmup=2*L*L;     %求基态的步数
    for i=1:Warmup 
        m = randint(1,1,[1,L]);  %one integer randomly in the range of [1,L]
        n = randint(1,1,[1,L]);
        E = Cal_E(H);
        SPIN1 = Flip_Spin(SPIN,m,n);
        E1 = Cal_E1(SPIN1,H);
        dE=E1-E;
 %       r=rand(1,1,'double'); 
        r=rand;
        if (r<exp(-dE/T))
        SPIN=SPIN1; 
        end
    end