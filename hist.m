
%settings 
nSamp = 10000;
a = 1;
b = 10;
val = (b-a)*rand([1,nSamp])+a;

%width
bw = 0.5;

%visualization
figure
histogram(val,'BinWidth',bw,'Normalization','pdf')
hold on
plot([1,10],[1/(b-a) 1/(b-a)])
title(['using pdf as normalization option'])
subtitle(['nSamp=' num2str(nSamp) ', a=' num2str(a),', b=' num2str(b),', binWidth=' num2str(bw)])

figure
histogram(val,'BinWidth',bw,'Normalization','probability','DisplayName','histplot')
hold on
plot([1,10],[1/(b-a) 1/(b-a)],'DisplayName','1/(b-a)')
plot([1,10],[1/(b-a) 1/(b-a)].*bw,'DisplayName',['bdwth/(b-a)'])
legend
title(['using probability as normalization option'])
subtitle(['nSamp=' num2str(nSamp) ', a=' num2str(a),', b=' num2str(b),', binWidth=' num2str(bw)])

figure
histogram(val,'BinWidth',bw,'Normalization','countdensity')
hold on
plot([1,10],[1/(b-a) 1/(b-a)].*nSamp)
title(['using countdensity as normalization option'])
subtitle(['nSamp=' num2str(nSamp) ', a=' num2str(a),', b=' num2str(b),', binWidth=' num2str(bw)])

