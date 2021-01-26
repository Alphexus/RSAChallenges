--[[
Autogenerates test cases for sliding problem

output: arrays of three values:
	arr, a possibly empty array
	width, a positive integer 
	step, a positive integer 
]]
return {function(n)
    n = n or 100
    local ret = {}
    for i = 1, n do
        local t = {}
		local l = math.random(0,15)
        for i = 1, l do
            t[i] = math.random(-100,100) 
        end
		local m = math.max(l-2,1)
        ret[i] = {t,math.random(1,m),math.random(1,m)}
    end
    return ret
end,{
    [{{}, 1, 1}] = {};
    [{{}, 1, 1}] = {};
    [{{12}, 1, 1}] = {{12}};
    [{{-6}, 1, 1}] = {{-6}};
    [{{-8}, 1, 1}] = {{-8}};
    [{{-76}, 1, 1}] = {{-76}};
    [{{-15}, 1, 1}] = {{-15}};
    [{{55, 80}, 1, 1}] = {{55}, {80}};
    [{{16, 28}, 1, 1}] = {{16}, {28}};
    [{{-25, 14}, 1, 1}] = {{-25}, {14}};
    [{{-43, 22}, 1, 1}] = {{-43}, {22}};
    [{{-41, 63}, 1, 1}] = {{-41}, {63}};
    [{{-45, 91}, 1, 1}] = {{-45}, {91}};
    [{{-29, 12}, 1, 1}] = {{-29}, {12}};
    [{{-88, -90}, 1, 1}] = {{-88}, {-90}};
    [{{-72, -99}, 1, 1}] = {{-72}, {-99}};
    [{{-17, 23, 6}, 1, 1}] = {{-17}, {23}, {6}};
    [{{-20, 53, 1}, 1, 1}] = {{-20}, {53}, {1}};
    [{{-93, -54, 36}, 1, 1}] = {{-93}, {-54}, {36}};
    [{{96, -91, -67}, 1, 1}] = {{96}, {-91}, {-67}};
    [{{-26, -39, -14}, 1, 1}] = {{-26}, {-39}, {-14}};
    [{{48, 17, 48, 26}, 2, 1}] = {{48, 17}, {17, 48}, {48, 26}};
    [{{88, 10, 95, -30}, 2, 2}] = {{88, 10}, {95, -30}};
    [{{84, 57, -49, 76}, 2, 2}] = {{84, 57}, {-49, 76}};
    [{{-71, 65, 1, -53}, 2, 1}] = {{-71, 65}, {65, 1}, {1, -53}};
    [{{53, -62, -72, -3}, 1, 1}] = {{53}, {-62}, {-72}, {-3}};
    [{{42, 33, -26, -17}, 1, 1}] = {{42}, {33}, {-26}, {-17}};
    [{{-53, 10, -11, 42}, 1, 2}] = {{-53}, {-11}};
    [{{49, 21, 86, -62, 52}, 2, 3}] = {{49, 21}, {-62, 52}};
    [{{-4, 42, 94, 48, -72}, 3, 2}] = {{-4, 42, 94}, {94, 48, -72}};
    [{{25, -90, -33, -70, 0}, 3, 2}] = {{25, -90, -33}, {-33, -70, 0}};
    [{{45, 69, -71, -20, 31}, 2, 3}] = {{45, 69}, {-20, 31}};
    [{{86, -28, -32, -39, 12}, 3, 1}] = {{86, -28, -32}, {-28, -32, -39}, {-32, -39, 12}};
    [{{-38, -24, 60, -18, 44}, 2, 3}] = {{-38, -24}, {-18, 44}};
    [{{98, 97, 46, 70, 81, 26}, 3, 1}] = {{98, 97, 46}, {97, 46, 70}, {46, 70, 81}, {70, 81, 26}};
    [{{-86, -47, 24, 10, 55, -91}, 4, 1}] = {{-86, -47, 24, 10}, {-47, 24, 10, 55}, {24, 10, 55, -91}};
    [{{-82, 65, -12, 40, -56, -41}, 1, 2}] = {{-82}, {-12}, {-56}};
    [{{25, 26, 26, -5, 44, 7, 82, 5}, 1, 1}] = {{25}, {26}, {26}, {-5}, {44}, {7}, {82}, {5}};
    [{{29, -58, 36, -93, 11, 11, 22}, 5, 3}] = {{29, -58, 36, -93, 11}};
    [{{-96, -35, -53, 49, 41, 92, 77}, 4, 4}] = {{-96, -35, -53, 49}};
    [{{16, -100, 14, -6, 20, -1, -10}, 4, 2}] = {{16, -100, 14, -6}, {14, -6, 20, -1}};
    [{{-93, 24, -69, -55, 61, -28, 51}, 2, 4}] = {{-93, 24}, {61, -28}};
    [{{96, -97, 19, -11, -51, 92, -99}, 3, 4}] = {{96, -97, 19}, {-51, 92, -99}};
    [{{13, 60, -91, -76, 78, 18, -60, -70}, 5, 4}] = {{13, 60, -91, -76, 78}};
    [{{-29, -45, -1, -32, 39, 12, 31, -91}, 3, 5}] = {{-29, -45, -1}, {12, 31, -91}};
    [{{-26, -25, 37, -71, 64, 4, 48, -48, 61}, 4, 1}] = {{-26, -25, 37, -71}, {-25, 37, -71, 64}, {37, -71, 64, 4}, {-71, 64, 4, 48}, {64, 4, 48, -48}, {4, 48, -48, 61}};
    [{{16, -54, -95, 15, 42, -72, 99, -23, 21}, 1, 2}] = {{16}, {-95}, {42}, {99}, {21}};
    [{{67, -97, -67, -57, 65, 44, -56, 19, -3}, 4, 7}] = {{67, -97, -67, -57}};
    [{{16, -13, 56, 16, 45, -4, 45, 6, -13, 20}, 5, 1}] = {{16, -13, 56, 16, 45}, {-13, 56, 16, 45, -4}, {56, 16, 45, -4, 45}, {16, 45, -4, 45, 6}, {45, -4, 45, 6, -13}, {-4, 45, 6, -13, 20}};
    [{{5, 88, 98, 31, 76, -65, -58, 37, 68, 80}, 8, 2}] = {{5, 88, 98, 31, 76, -65, -58, 37}, {98, 31, 76, -65, -58, 37, 68, 80}};
    [{{48, 20, -43, 58, 55, -9, 88, 36, 89, 72}, 7, 1}] = {{48, 20, -43, 58, 55, -9, 88}, {20, -43, 58, 55, -9, 88, 36}, {-43, 58, 55, -9, 88, 36, 89}, {58, 55, -9, 88, 36, 89, 72}};
    [{{87, -86, 88, -86, -72, 63, -94, -23, -98}, 2, 3}] = {{87, -86}, {-86, -72}, {-94, -23}};
    [{{97, 59, -39, -62, 27, 12, -92, 81, 29, 92}, 5, 2}] = {{97, 59, -39, -62, 27}, {-39, -62, 27, 12, -92}, {27, 12, -92, 81, 29}};
    [{{-69, -24, 27, -7, -87, -1, -71, 72, -25, 10}, 6, 1}] = {{-69, -24, 27, -7, -87, -1}, {-24, 27, -7, -87, -1, -71}, {27, -7, -87, -1, -71, 72}, {-7, -87, -1, -71, 72, -25}, {-87, -1, -71, 72, -25, 10}};
    [{{-88, 50, 84, 14, 13, 41, -3, -55, -4, 96, -20}, 5, 4}] = {{-88, 50, 84, 14, 13}, {13, 41, -3, -55, -4}};
    [{{69, -76, -82, 97, 37, -54, 53, 82, 73, 74, -73}, 1, 1}] = {{69}, {-76}, {-82}, {97}, {37}, {-54}, {53}, {82}, {73}, {74}, {-73}};
    [{{1, -87, -52, -81, 85, 60, -5, 11, -36, 27, -92}, 1, 9}] = {{1}, {27}};
    [{{-6, 77, -82, -58, -88, 30, 49, 43, -70, -26, 78}, 7, 5}] = {{-6, 77, -82, -58, -88, 30, 49}};
    [{{99, -88, -15, 66, 81, -10, -28, 33, -10, 98, 63}, 3, 9}] = {{99, -88, -15}};
    [{{70, 86, -36, -65, -8, -64, -20, -43, 81, -52, 64}, 9, 2}] = {{70, 86, -36, -65, -8, -64, -20, -43, 81}, {-36, -65, -8, -64, -20, -43, 81, -52, 64}};
    [{{-7, 38, -57, -93, 90, -9, -69, -85, -68, 81, -32}, 7, 3}] = {{-7, 38, -57, -93, 90, -9, -69}, {-93, 90, -9, -69, -85, -68, 81}};
    [{{84, -19, -73, -4, -13, -13, -59, 39, 38, -97, -20}, 1, 4}] = {{84}, {-13}, {38}};
    [{{57, -48, 99, 23, 7, 19, 9, 47, 84, 66, 14, -10, 27}, 3, 5}] = {{57, -48, 99}, {19, 9, 47}, {14, -10, 27}};
    [{{-81, 58, -77, -87, 3, 64, -79, 27, 39, 12, 92, -47}, 1, 4}] = {{-81}, {3}, {39}};
    [{{-18, 53, 88, -59, 41, -35, -79, -99, -53, -73, -82}, 3, 6}] = {{-18, 53, 88}, {-79, -99, -53}};
    [{{2, 39, 71, -48, 81, 79, -25, 1, 1, -8, 50, 83, -35}, 9, 11}] = {{2, 39, 71, -48, 81, 79, -25, 1, 1}};
    [{{-61, -57, 97, 44, -43, 24, -58, 72, -69, 49, 71, -91}, 6, 6}] = {{-61, -57, 97, 44, -43, 24}, {-58, 72, -69, 49, 71, -91}};
    [{{-1, -11, -73, -59, -14, 96, -25, 6, 66, 95, -94, -61}, 3, 10}] = {{-1, -11, -73}};
    [{{-86, -68, 93, -22, 5, 0, 90, 31, -76, 46, 30, -23, -1}, 1, 9}] = {{-86}, {46}};
    [{{-69, -53, 100, -74, 88, -80, -87, 72, -63, -29, -97, 8}, 9, 4}] = {{-69, -53, 100, -74, 88, -80, -87, 72, -63}};
    [{{82, 54, 79, -17, -4, 82, -39, -23, 23, 17, -56, 17, 37}, 11, 6}] = {{82, 54, 79, -17, -4, 82, -39, -23, 23, 17, -56}};
    [{{26, 83, 21, -63, 63, 63, -3, 77, -96, -69, -55, -81, 21}, 2, 3}] = {{26, 83}, {-63, 63}, {-3, 77}, {-69, -55}};
    [{{-70, 77, 67, -80, -20, -18, -23, 24, -70, 82, 78, 52, -1}, 3, 8}] = {{-70, 77, 67}, {-70, 82, 78}};
    [{{-65, -43, 76, 86, 96, 80, 56, -26, -71, 20, -9, -83, 42}, 9, 10}] = {{-65, -43, 76, 86, 96, 80, 56, -26, -71}};
    [{{55, 72, 27, -11, 49, -50, 98, 39, -50, -53, 12, -90, -49}, 1, 2}] = {{55}, {27}, {49}, {98}, {-50}, {12}, {-49}};
    [{{-68, 35, 34, 49, 10, -21, -41, -5, -67, 48, -42, -22, -77}, 4, 3}] = {{-68, 35, 34, 49}, {49, 10, -21, -41}, {-41, -5, -67, 48}, {48, -42, -22, -77}};
    [{{13, 78, -28, -74, 24, 16, 54, 30, 15, 11, -29, 69, 76, 92}, 6, 9}] = {{13, 78, -28, -74, 24, 16}};
    [{{90, -57, -4, -29, -8, 2, 87, 83, -66, 29, -36, -17, -4, 43}, 3, 6}] = {{90, -57, -4}, {87, 83, -66}};
    [{{15, 99, 9, -25, 83, 42, -47, 44, 59, -52, -76, -76, 42, -81}, 11, 8}] = {{15, 99, 9, -25, 83, 42, -47, 44, 59, -52, -76}};
    [{{10, -71, 71, -56, 41, 39, -96, -19, 26, 64, -70, -43, 90, 98}, 4, 5}] = {{10, -71, 71, -56}, {39, -96, -19, 26}, {-70, -43, 90, 98}};
    [{{52, -37, -3, -77, 85, 67, -81, 84, -18, -22, -52, -80, 63, 81}, 1, 7}] = {{52}, {84}};
    [{{-89, -8, -100, 76, 8, -9, 41, -72, -73, -25, 27, -22, 66, -24}, 12, 2}] = {{-89, -8, -100, 76, 8, -9, 41, -72, -73, -25, 27, -22}, {-100, 76, 8, -9, 41, -72, -73, -25, 27, -22, 66, -24}};
    [{{-63, 31, 81, -6, 29, 37, 82, 63, -51, 75, -97, 95, 79, 74, 54}, 12, 6}] = {{-63, 31, 81, -6, 29, 37, 82, 63, -51, 75, -97, 95}};
    [{{-79, -29, 51, -72, -44, 82, 13, -69, 12, -23, -53, -2, -33, -53}, 6, 9}] = {{-79, -29, 51, -72, -44, 82}};
    [{{-65, 40, 25, 19, 54, 85, 24, -37, -85, 74, -95, -26, -58, -63}, 11, 11}] = {{-65, 40, 25, 19, 54, 85, 24, -37, -85, 74, -95}};
    [{{-53, -4, -24, -64, 98, -89, 9, 95, -87, 73, 27, 99, -33, 7, -58}, 2, 4}] = {{-53, -4}, {98, -89}, {-87, 73}, {-33, 7}};
    [{{79, -6, 70, 71, -86, 69, 52, -27, 70, 12, 25, 18, -85, -23, 99}, 11, 4}] = {{79, -6, 70, 71, -86, 69, 52, -27, 70, 12, 25}, {-86, 69, 52, -27, 70, 12, 25, 18, -85, -23, 99}};
    [{{-61, 58, 74, -14, -78, -40, -69, -98, -86, -5, 22, -50, -30, -72}, 5, 2}] = {{-61, 58, 74, -14, -78}, {74, -14, -78, -40, -69}, {-78, -40, -69, -98, -86}, {-69, -98, -86, -5, 22}, {-86, -5, 22, -50, -30}};
    [{{-19, -28, 61, 9, -24, -9, 39, 84, -33, 8, 12, -70, -55, -57, -73}, 1, 9}] = {{-19}, {8}};
    [{{-23, -23, 10, -14, 20, -92, -100, -40, -54, 1, -23, 74, -41, -50}, 3, 10}] = {{-23, -23, 10}, {-23, 74, -41}};
    [{{55, 78, -76, -52, 80, -27, -76, 69, -31, 9, -31, 16, -50, 65, -7}, 13, 1}] = {{55, 78, -76, -52, 80, -27, -76, 69, -31, 9, -31, 16, -50}, {78, -76, -52, 80, -27, -76, 69, -31, 9, -31, 16, -50, 65}, {-76, -52, 80, -27, -76, 69, -31, 9, -31, 16, -50, 65, -7}};
    [{{-85, -12, -22, 94, 90, -97, 86, 26, 11, 9, 61, -23, -14, -41, 77}, 13, 10}] = {{-85, -12, -22, 94, 90, -97, 86, 26, 11, 9, 61, -23, -14}};
    [{{83, -75, -30, 36, 77, -92, -96, -87, -92, -49, -98, -22, 41, -19, -80}, 7, 8}] = {{83, -75, -30, 36, 77, -92, -96}, {-92, -49, -98, -22, 41, -19, -80}};
}}
