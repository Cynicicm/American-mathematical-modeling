%%%%%%%  Ѱ����λ��
function [newi,newj]=findnew(i,j,pd)
weith = 70;
length = 70;
newi = i;
newj = j;

if(j>=1 && j<=35 && (i==1 || i==25)) 
    newi=i;newj=j+1;%B�������ҿ�
end
if(j>35 && (i==1 || i==25) )   
    newi=i;newj=j-1;%C��������
end
if(i>=2 && i<=25 && j==1) 
   newi=i;newj=j+1;%B������������ҿ�
end
if(i>=2 && i<=25 && j==length)     
    newi=i;newj=j-1;%C�������Ҷ�����
end
if(i==25&&j>=34&&j<36)
    newi=i-1;newj=j;%�������Զ����Ⱥ�����ڷ���£
end
if(i>=26 && i<=weith-1 && j==1) 
   newi=i+1;newj=j;%B������������ҿ�
end
if(i>=26 && i<=weith-1 && j==70) 
   newi=i+1;newj=j;%B������������ҿ�
end
if(j>1 && j<=35 && (i==70)) 
    newi=i;newj=j-1;%B�������ҿ�
end
if(j>35&&j<length && (i==70) )   
    newi=i;newj=j+1;%C��������
end
if(i>=2&&i<=weith-1&&j>=2&&j<=length-1)%�����м���Ⱥ���������ж�
    a=[pd(i-1,j-1) pd(i-1,j) pd(i-1,j+1) pd(i,j-1) pd(i,j+1) pd(i+1,j-1) pd(i+1,j) pd(i+1,j+1)];%�˸�������вֵ�ж�
    [m,n]=min(a);
    switch n
        case 1
            newi=i-1;newj=j-1;%NW
        case 2
             newi=i-1;newj=j;%N  
        case 3
             newi=i-1;newj=j+1;%NE
        case 4
             newi=i;newj=j-1;%W
        case 5 
            newi=i;newj=j+1;%E
        case 6
             newi=i+1;newj=j-1;%SW      
        case 7
             newi=i+1;newj=j;%S
        otherwise
             newi=i+1;newj=j+1;%SE
    end
end
end