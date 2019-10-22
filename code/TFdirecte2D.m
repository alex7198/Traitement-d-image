function [tf] = TFdirecte2D(img)
    %On cherche le nombre de ligne et de colonne de l'image passée en
    %paramètre.
    [nbLigne,nbColonne]=size(img);
    %On crée la matrice qui sera renvoyée à la fin du programme (de la
    %même taille que celle passée en paramètre), initialisée à 0.
    tf=zeros(nbLigne,nbColonne);
    %Pour chaque pixel de l'image à renvoyée
    for u=1:nbLigne
        for v=1:nbColonne
            %Pour chaque pixel  de l'image passée en paramètre
            for x=1:nbLigne
                for y=1:nbColonne
                    %On applique la formule de la transformée de Fourier
                    %sur le pixel de la nouvelle image
                    tf(u,v) = tf(u,v) + img(x,y)*exp((-2*1i*pi)*(((u-1)*...
                    (x-1)/nbLigne) + ((v-1)*(y-1)/nbColonne)));
                end
            end
        end
    end
end