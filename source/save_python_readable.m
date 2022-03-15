addpath ../../holosuite


% size of splits, originally 7200
n = 3600;

% load file
load('../data/huiying_labeled/20191111_multilabel_huiying_cD-new0.15-v2.mat')
disp('loading done')

% transform into cnn readable form
temp1_readable = classificationData.convert_to_input_NN(temp1);

% part 1
temp1_readable_part.prtclID = temp1_readable.prtclID(1:n);
temp1_readable_part.prtclIm = temp1_readable.prtclIm(1:n);
temp1_readable_part.cpType = temp1_readable.cpType(1:n);
save('huiying_uncropped_part1.mat', 'temp1_readable_part', '-v7')
disp('part 1 done')

% part 2
temp1_readable_part.prtclID = temp1_readable.prtclID(n+1:2*n);
temp1_readable_part.prtclIm = temp1_readable.prtclIm(n+1:2*n);
temp1_readable_part.cpType = temp1_readable.cpType(n+1:2*n);
save('huiying_uncropped_part2.mat', 'temp1_readable_part', '-v7')
disp('part 2 done')

% part 3
temp1_readable_part.prtclID = temp1_readable.prtclID(2*n+1:3*n);
temp1_readable_part.prtclIm = temp1_readable.prtclIm(2*n+1:3*n);
temp1_readable_part.cpType = temp1_readable.cpType(2*n+1:3*n);
save('huiying_uncropped_part3.mat', 'temp1_readable_part', '-v7')
disp('part 3 done')

% part 4
temp1_readable_part.prtclID = temp1_readable.prtclID(3*n+1:4*n);
temp1_readable_part.prtclIm = temp1_readable.prtclIm(3*n+1:4*n);
temp1_readable_part.cpType = temp1_readable.cpType(3*n+1:4*n);
save('huiying_uncropped_part4.mat', 'temp1_readable_part', '-v7')
disp('part 4 done')

% part 5
temp1_readable_part.prtclID = temp1_readable.prtclID(4*n+1:5*n);
temp1_readable_part.prtclIm = temp1_readable.prtclIm(4*n+1:5*n);
temp1_readable_part.cpType = temp1_readable.cpType(4*n+1:5*n);
save('huiying_uncropped_part5.mat', 'temp1_readable_part', '-v7')
disp('part 5 done')

% part 6
temp1_readable_part.prtclID = temp1_readable.prtclID(5*n+1:end);
temp1_readable_part.prtclIm = temp1_readable.prtclIm(5*n+1:end);
temp1_readable_part.cpType = temp1_readable.cpType(5*n+1:end);
save('huiying_uncropped_part6.mat', 'temp1_readable_part', '-v7')
disp('part 6 done')
