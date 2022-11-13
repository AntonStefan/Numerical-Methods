function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    redChannel = img(:, :, 1);
    % TODO: Extrage canalul verde al imaginii.
    greenChannel = img(:, :, 2);
    % TODO: Extrage canalul albastru al imaginii.
    blueChannel = img(:, :, 3);
    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    outred = proximal_rotate(redChannel, rotation_angle);
    outgreen = proximal_rotate(greenChannel, rotation_angle);
    outblue = proximal_rotate(blueChannel, rotation_angle);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, outred, outgreen, outblue);
endfunction