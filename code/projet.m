Matrice1D = [0.1 0 0.5 0.7 0.4 0.1 0 0.1];
Matrice2D = [0 0 0 0 0 0 0 0
             1 1 1 1 1 1 1 1
             0 0 0 1 1 0 0 0
             0 0 0 0 0 0 0 0
             0 0 0 0 0 0 0 0
             1 1 0 0 0 0 1 1
             1 1 1 0 0 1 1 1
             0 0 0 0 0 0 0 0];
         
MatlabFFT1D = fft2(Matrice1D);
MatlabFFT2D = fft2(Matrice2D);
NotreFFT1D = NotreFft(Matrice1D);
NotreFFT2D = NotreFft(Matrice2D);

MatlabIFFT1D = ifft2(NotreFFT1D);
MatlabIFFT2D = ifft2(NotreFFT2D);
NotreIFFT1D = NotreIfft(NotreFFT1D);
NotreIFFT2D = NotreIfft(NotreFFT2D);

MatlabFFT1D 
NotreFFT1D

MatlabFFT2D
NotreFFT2D

MatlabIFFT1D
NotreIFFT1D

MatlabIFFT2D
NotreIFFT2D
             