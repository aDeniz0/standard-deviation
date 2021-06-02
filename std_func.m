% %%%%%%%%%%%%%%
clc
clear

n=input("N sayısı(dizinin eleman sayısını) giriniz.");

for i=1:n
x(i)=randi(13);
end

ortx=mean(x);
if(n==1)
    sigma=0;
else
for j=1:length(x)
    sigma(j)=(x(j)-ortx).^2;
end
sigma=sum(sigma);
sigma=sqrt(1/(n-1).*sigma);
end

% Matlab içinde bulunan std fonksiyonu ile standart sapma hesaplanır.
sigma2=std(x);
fprintf('Formül sonucu =%f',sigma)
fprintf('\nKomut sonucu =%f',sigma2)
% Kod ile hazır fonksiyonun bulduğu değer karşılaştırılır.
if(sigma==sigma2)
    fprintf('\nElle yapılan sonuç ve matlab komutu aynı işleminiz doğru.')
else
    fprintf('\nYazmış oldugunuz formülün sonucu matlab kodu ile aynı değil.\n lutfen tekrar kontrol ediniz.')
end
