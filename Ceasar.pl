nguoi(marcus).
nguoi_xu_pompeii(marcus).
nguoi_la_ma(X) :- nguoi_xu_pompeii(X).
ke_cam_quyen(ceasar).
trung_thanh_voi_ceasar(X) :- nguoi_la_ma(X), not(thu_ghet_ceasar(X)).
thu_ghet_ceasar(X) :- nguoi_la_ma(X), not(trung_thanh_voi_ceasar(X)).
trung_thanh(X, Y) :- nguoi(X), nguoi(Y), not((nguoi(Z), Z \= Y, trung_thanh(X, Z))).
muon_giet(X, Y) :- nguoi(X), ke_cam_quyen(Y), not(trung_thanh(X, Y)).
muon_giet(marcus, ceasar).
