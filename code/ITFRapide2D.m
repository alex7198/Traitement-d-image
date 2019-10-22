function TF = ITFRapide2D(Img)
    [nbLignes, nbColonnes] = size(Img);
    TF = Img;
    
    %On calcule la transformée de Fourier 1D inverse pour chaque ligne de l'image
    for ligne=1:nbLignes
        TF(ligne,:) = calculInverseTF1D(TF(ligne,:));
    end
    
    %Puis on la calcule pour chaque colonne
    for colonne=1:nbColonnes
        TF(:,colonne) = calculInverseTF1D(TF(:,colonne).');
    end
    
    %Enfin on ne garde que la partie réelle du résultat puis on divise par
    %la taille de l'image car la transformée de Fourier inverse permet de
    %retourner à l'image de base mais à un scalaire près
    TF = real(TF)/(nbLignes*nbColonnes);
end