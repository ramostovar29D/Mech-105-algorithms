function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
syms x
if nargin<3
    error('at least 3 input argumetns are needed to run fuction')
end
zeroT= func(xl,varargin{:})*func(xu,varargin{:});
if zeroT>0;
    error('no change in sign')
end
if nargin<4| isempty(es)
    es= 0.0001;
    if nargin<5| isempty(matrix)
        matrix=200;
    end
    ea=100;
    iter=0;
    while(ea<es)
        xr=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
         xr2=xr;
         iter=iter+1
          if xr~=0;
            ea=abs((xr-xr2)/xr)*100;
          end
          zeroT= func(xl,varargin{:})*func(xr,varargin{:});
        if zeroT<0;
            xr2=xu;
        else 
            xr2=xl;
        end
    end
    root=xr;
    fx=func(xr,vargin{:});
end
