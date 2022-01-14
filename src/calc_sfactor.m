function [sfactor] = calc_sfactor(Rl,Theta_s,Theta_r,Theta_LL,bbx,Ta,Theta_f)
SMC=Theta_LL(1:54,1); % soil surface moisture ˳���෴
wfrac=1./(1+exp((-100.*Theta_s').*(SMC-(Theta_f'+Theta_r')/2))).*bbx; %����������ˮ��в��ϵ��
RL=Rl.*bbx;
RLfrac=RL./(sum(sum(RL))); %���������ĸ����ܶ�ռ��
sfactor=sum(sum(RLfrac.*wfrac)); %����ˮ��в��ϵ��    
end
