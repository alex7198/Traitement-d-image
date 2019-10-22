function [ FFT ] = NotreFft( Image )

nbLignes = size(Image,1);

if nbLignes == 1
    FFT = TFRapide1D(Image);
else
    FFT = TFRapide2D(Image);
end

end

