function TF = TFRapide2D(Img)
    [nbLignes, nbColonnes] = size(Img);
    TF = Img;
    
    %On calcule la transformée de Fourier 1D inverse pour chaque ligne de l'image
    for ligne=1:nbLignes
        TF(ligne,:) = TFRapide1D(TF(ligne,:));
    end
    
    %Puis on la calcule pour chaque colonne
    for colonne=1:nbColonnes
        TF(:,colonne) = TFRapide1D(TF(:,colonne).');
    end
end