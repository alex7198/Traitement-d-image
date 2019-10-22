function TF = ITFRapide1D(Img)
    TF = real(calculInverseTF1D(Img))/size(Img,2);
end

function TF = calculInverseTF1D(Img)
    n = size(Img,2);

    TF = Img;

    if(n ~= 1)
        pairs = Img(1:2:(n-1));
        impairs = Img(2:2:n);
        
        TFPairs = calculInverseTF1D(pairs);
        TFImpairs = calculInverseTF1D(impairs);
        for u=1:n/2
            coef = exp(2 * pi * 1i * (u-1) / n);
            TF(u) = TFPairs(u) + coef * TFImpairs(u);
            TF(u+(n/2)) = TFPairs(u) - coef * TFImpairs(u);
        end
    end
end