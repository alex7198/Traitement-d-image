function [ IFFT ] = NotreIfft( Image )

nbLignes = size(Image,1);

if nbLignes == 1
    IFFT = ITFRapide1D(Image);
else
    IFFT = ITFRapide2D(Image);
end

end
