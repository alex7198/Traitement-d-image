function TF = ITFRapide2D(Img)
    [nbLignes, nbColonnes] = size(Img);
    TF = Img;
    
    %On calcule la transform�e de Fourier 1D inverse pour chaque ligne de l'image
    for ligne=1:nbLignes
        TF(ligne,:) = calculInverseTF1D(TF(ligne,:));
    end
    
    %Puis on la calcule pour chaque colonne
    for colonne=1:nbColonnes
        TF(:,colonne) = calculInverseTF1D(TF(:,colonne).');
    end
    
    %Enfin on ne garde que la partie r�elle du r�sultat puis on divise par
    %la taille de l'image car la transform�e de Fourier inverse permet de
    %retourner � l'image de base mais � un scalaire pr�s
    TF = real(TF)/(nbLignes*nbColonnes);
end