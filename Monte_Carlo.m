function y = Monte_Carlo(T,H,MCstep) %����yΪһ��2�е�������Ԫ������Ϊ�Ż�ǿ�ȣ�����
global L;
global SPIN;

    EE = zeros(MCstep,1);
    magneton = zeros(MCstep,1);
    
    for i=1:MCstep 
        m = randint(1,1,[1,L]);
        n = randint(1,1,[1,L]);
        E = Cal_E(H);
        SPIN1 = Flip_Spin(SPIN,m,n);
        E1 = Cal_E1(SPIN1,H);
        dE=E1-E;
 %       r=rand(1,1,'double'); 
         r=rand;
        if (r<exp(-dE/T))
        SPIN=SPIN1; 
        EE(i)=E1;
        else
        EE(i)=E;
        end
        magneton(i) = sum(sum(SPIN(2:L+1,2:L+1)));
    end
    
        E1st = sum(EE)/MCstep;
        E2th = EE'*EE/MCstep;
        Ave_magneton = sum(magneton)/MCstep;
        S=(E2th-E1st^2)/(T*T);
        y = [Ave_magneton,S];