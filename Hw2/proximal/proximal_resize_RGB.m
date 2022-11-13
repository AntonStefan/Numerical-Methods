function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    redChannel = img(:, :, 1);
    % TODO: Extrage canalul verde al imaginii.
    greenChannel = img(:, :, 2);
    % TODO: Extrage canalul albastru al imaginii.
    blueChannel = img(:, :, 3);
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    outred = proximal_resize(redChannel, p, q);
    outgreen = proximal_resize(greenChannel, p, q);
    outblue = proximal_resize(blueChannel, p, q);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, outred, outgreen, outblue);
endfunction
