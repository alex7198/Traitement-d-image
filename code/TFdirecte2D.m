function [tf] = TFdirecte2D(img)
    %On cherche le nombre de ligne et de colonne de l'image pass�e en
    %param�tre.
    [nbLigne,nbColonne]=size(img);
    %On cr�e la matrice qui sera renvoy�e � la fin du programme (de la
    %m�me taille que celle pass�e en param�tre), initialis�e � 0.
    tf=zeros(nbLigne,nbColonne);
    %Pour chaque pixel de l'image � renvoy�e
    for u=1:nbLigne
        for v=1:nbColonne
            %Pour chaque pixel  de l'image pass�e en param�tre
            for x=1:nbLigne
                for y=1:nbColonne
                    %On applique la formule de la transform�e de Fourier
                    %sur le pixel de la nouvelle image
                    tf(u,v) = tf(u,v) + img(x,y)*exp((-2*1i*pi)*(((u-1)*...
                    (x-1)/nbLigne) + ((v-1)*(y-1)/nbColonne)));
                end
            end
        end
    end
end