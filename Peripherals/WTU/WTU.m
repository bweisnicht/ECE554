function out = WTU(x)
%Perform wavelet transform
depth=4;
width=2^depth;
scaling=256;
y=x.*scaling;
% Do the wavelet transform on the entire range of inputs
for h=0:width:size(x,2)-width
   % Do a total of <depth> iterations of the transform to get the output
   for i=1:depth
      % Generate the high-pass and low-pass outputs
      for j=2:2:width
         lpf(j/2)=(y(h+j)+y(h+j-1))/2;
         hpf(j/2)=(y(h+j)-y(h+j-1))/2;
      end
      % For all but the last iteration of the transform, move the output to the
      % appropriate spot for the next iteration.
      %if i~=depth
         for j=1:width/2
            y(h+j)=lpf(j);
            y(h+j+width/2)=hpf(j);
         end
      %else
      %   for j=2:2:width
      %      if lpf(j/2) > 0
      %         y(h+j-1)=lpf(j/2);
      %      else
      %         y(h+j-1)=lpf(j/2);%0
      %      end
      %      if hpf(j/2) > 0
      %         y(h+j)=hpf(j/2);
      %      else
      %         y(h+j)=hpf(j/2);%0
      %      end
      %   end
      %end
      % out is a 2D array, first dimension selects the transform, second dimension
      % is the values at the various frequencies
      for k=0:width-1
         k_btr=bin2dec(fliplr(dec2bin(k,depth)));
         out(h/width+1,k+1)=y(h+k_btr+1); 
         %out(h/width+1,1:width)=y(h+1:h+width);
      end
   end
end
WTU=out;
