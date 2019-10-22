function [iout] = tatouageInitial (img)
    %On applique la transformée de Fourier à l'image avant de dessiner les
    %initials
    out = fft2(img);
    %On calcule la taille de l'image
    [nbLigne,nbColonne]=size(img);
    %On dessine les lettres A et L en gris pixel par pixel en bas à droite
    %de l'image
    for k=0:7
            %On dessine la barre de droite, de gauche et centrale du A.
            out(nbLigne-k,nbColonne-k-15)=0.5;
            out(nbLigne-k,nbColonne-29+k)=0.5;
            out(nbLigne-3,nbColonne-k-18)=0.5;
            %On dessine les barres verticales et horizontales du L.
            out(nbLigne-k,nbColonne-13)=0.5;
            out(nbLigne,nbColonne-k-5)=0.5;
    end
    %On applique la transformée de Fourier inverse
    iout = ifft2(out);
    %Affichage
    imshow(iout)
end

