
INSERT INTO profile(  profileid, profilename) VALUES (1, 'Super Admin');
INSERT INTO profile(  profileid, profilename) VALUES (2, 'Admin');
INSERT INTO profile(  profileid, profilename) VALUES (3, 'Trainee');
INSERT INTO profile(  profileid, profilename) VALUES (4, 'Trainer');
INSERT INTO profile(  profileid, profilename) VALUES (5, 'Training Center');
INSERT INTO profile(  profileid, profilename) VALUES (6, 'Assessor');
INSERT INTO profile(  profileid, profilename) VALUES (7, 'Training Partner');
INSERT INTO profile(  profileid, profilename) VALUES (8, 'Assesssment Agency');

INSERT INTO kindofbusiness(  kindofbusinessid, kindofbusinessname) VALUES (1, 'Food');
INSERT INTO kindofbusiness(  kindofbusinessid, kindofbusinessname) VALUES (2, 'Oikl');
INSERT INTO kindofbusiness(  kindofbusinessid, kindofbusinessname) VALUES (3, 'Milk');
INSERT INTO kindofbusiness(  kindofbusinessid, kindofbusinessname) VALUES (4, 'Trade');

INSERT INTO state(  stateid, statename, status) VALUES (1, 'Uttar Pradesh', 'A');
INSERT INTO state(  stateid, statename, status) VALUES (2, 'Madhya Pradesh', 'A');

INSERT INTO district(  districtid, districtname, stateid, status) VALUES (1, 'Agra', 1, 'A');
INSERT INTO district(  districtid, districtname, stateid, status) VALUES (2, 'Aligarh', 1, 'A');
INSERT INTO district(  districtid, districtname, stateid, status) VALUES (3, 'Morena', 2, 'A');
INSERT INTO district(  districtid, districtname, stateid, status) VALUES (4, 'Gwalior', 2, 'A');

INSERT INTO city(  cityid, cityname, districtid, status) VALUES (1, 'Agra Cantt', 1, 'A');
INSERT INTO city(  cityid, cityname, districtid, status) VALUES (2, 'Aligarh Cantt', 2, 'A');
INSERT INTO city(  cityid, cityname, districtid, status) VALUES (3, 'Morena Cantt', 3, 'A');
INSERT INTO city(  cityid, cityname, districtid, status) VALUES (4, 'gwalior Cantt', 4, 'A');

INSERT INTO title( titleid, titlename)  VALUES (1, 'Mr.');
INSERT INTO title( titleid, titlename)  VALUES (1, 'Mrs.');

INSERT INTO coursetype(coursetypeid, coursetype) VALUES (1, 'Basic');
INSERT INTO coursetype(coursetypeid, coursetype) VALUES (2, 'Advance');
INSERT INTO coursetype(coursetypeid, coursetype) VALUES (3, 'Special');



