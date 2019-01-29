close all; clear all;
h=figure();
load scalability.dat
sup=scalability(1,2)./scalability(:,2);
sup1=scalability(1,3)./scalability(:,3);
#plot (scalability(:,1),scalability(:,1),"linewidth",3,'+-r',"markersize",13);
loglog (scalability(:,1),scalability(:,1),"linewidth",3,'+-r',"markersize",13);
hold on;
#plot (scalability(:,1),sup,"linewidth",3,'o-b',"markersize",13);
loglog (scalability(:,1),sup,"linewidth",3,'o-b',"markersize",13);
#plot (scalability(:,1),sup1,"linewidth",3,'x-k',"markersize",13);
loglog (scalability(:,1),sup1,"linewidth",3,'x-k',"markersize",13);
ylabel("Speed Up")
xlabel("Number of CPUs")
grid("minor");
legend("Ideal","Constant Num. of Part","Increasing Num. of Part","location","northwest")
legend("boxon")
print(h,'-dpng','-color','vib_plt.png')
print -deps scalability.eps

