function [sonuc] = monte_carlo(a,b,N,h)
kirmizi_nokta_sayisi = 0;
yesil_nokta_sayisi = 0;

xplot=linspace(a,b,1000);
yplot=int_fonk(xplot);
plot(xplot,yplot);
hold on;
for ii = 1:1:N
    x=a+(b-a)*rand;
y = (2*rand - 1) * h;
    if y<int_fonk(x) & y > 0
        kirmizi_nokta_sayisi = kirmizi_nokta_sayisi +1;
        plot(x,y,'rx');
    elseif y>int_fonk(x) & y < 0
        yesil_nokta_sayisi = yesil_nokta_sayisi +1;
        plot(x,y,'gx');
    else
        plot(x,y,'bx');
    end
end
sonuc = ((kirmizi_nokta_sayisi-yesil_nokta_sayisi)/N) * h *(b-a);
end