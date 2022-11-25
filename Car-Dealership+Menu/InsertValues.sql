
INSERT INTO brand VALUES ('1', 'Peugeot');
INSERT INTO brand VALUES ('2', 'Tesla');
INSERT INTO brand VALUES ('3', 'Mercedes');
INSERT INTO brand VALUES ('4', 'Volkswagen');
INSERT INTO brand VALUES ('5', 'Fiat');

INSERT INTO model VALUES ('308', '1','10000','15000','20000');
INSERT INTO model VALUES ('208', '1','8000','13000','18000');
INSERT INTO model VALUES ('750', '2','12000','16000','21000');
INSERT INTO model VALUES ('850', '2','13000','17000','24000');
INSERT INTO model VALUES ('150', '3','13000','17000','22000');
INSERT INTO model VALUES ('220', '3','16000','21000','27000');
INSERT INTO model VALUES ('910', '4','14000','18000','23000');
INSERT INTO model VALUES ('930', '4','19000','28000','33000');
INSERT INTO model VALUES ('970', '4','19000','23000','25000');
INSERT INTO model VALUES ('920', '5','15000','19000','24000');

INSERT INTO dealer (dealer_id,dealer_name,dealer_phone,dealer_address)
VALUES
  (1,'Prescott Jensen','7137615423','578-7062 Orci Avenue'),
  (2,'Quinn Bates','0949821825','832-5345 Sodales Rd.'),
  (3,'Chase Fischer','8475235813','Ap #649-6734 Ultrices St.'),
  (4,'Elliott Bell','3671487525','525-9269 Vitae St.'),
  (5,'Cole Elliott','3596487469','Ap #692-5292 Et Avenue'),
  (6,'Lester Zamora','4754121330','Ap #312-7943 At Ave'),
  (7,'Hamish Townsend','2997641355','Ap #619-372 Diam St.'),
  (8,'Hyatt Hamilton','1893767984','720-3635 Gravida. St.'),
  (9,'Wallace Frost','9568548766','929-5205 Nulla Av.'),
  (10,'Asher Benton','4883144341','P.O. Box 552, 9797 Aliquet Rd.');


INSERT INTO vehicle VALUES ( '111', '1', '308', 1 );
INSERT INTO vehicle VALUES ( '112', '1', '208', 2 );
INSERT INTO vehicle VALUES ( '331', '2', '750', 3);
INSERT INTO vehicle VALUES ( '441', '2', '850', 4);
INSERT INTO vehicle VALUES ( '551', '3', '150', 5);
INSERT INTO vehicle VALUES ( '552', '3', '220', 6);
INSERT INTO vehicle VALUES ( '553', '4', '910', 7);
INSERT INTO vehicle VALUES ( '554', '4', '930', 8);
INSERT INTO vehicle VALUES ( '555', '5', '920', 9);
INSERT INTO vehicle VALUES ( '113', '1', '208', 10);
INSERT INTO vehicle VALUES ( '6161', '5', '920', 10);
INSERT INTO vehicle VALUES ( '616161', '5', '920', 2);
INSERT INTO vehicle VALUES ( '6262262', '5', '920', 1);
INSERT INTO vehicle VALUES ( '63363636', '5', '920', 1);
INSERT INTO vehicle VALUES ( '736363', '5', '920', 3);

INSERT INTO customer
VALUES
  (712,'Quemby Woodward','120-7367 Metus Road','03215825100'),
  (713,'Lisandra Booth','996-6578 A Ave','09970647584'),
  (714,'Riley Myers','798-9013 Gravida St.','07308525611'),
  (715,'Indigo Wells','Ap #145-8193 Ac Street','08006033695'),
  (716,'Cody Fuller','Ap #820-8828 Egestas Rd.','07688827383'),
  (717,'Quentin Allison','746-208 Pharetra St.','0800125143'),
  (718,'Demetrius Wolfe','7327 Tellus. Avenue','01117605464'),
  (719,'Bertha Berry','784-2171 Sapien Rd.','07327653475'),
  (720,'Isabella Dodson','Ap #174-6914 Varius. Road','0169776871'),
  (721,'Evangeline Dawson','4745 Aenean Rd.','08001111'),
  (722,'Aspen Mckay','Ap #457-2337 Sem Rd.','05558415451'),
  (723,'Lunea Heath','741-5343 Imperdiet St.','07677550294'),
  (724,'Kirby Olsen','P.O. Box 893, 6012 Ut Avenue','08004713112');



INSERT INTO orders VALUES ('351020', '712', '24000',1,111);
INSERT INTO orders VALUES ('351021', '713', '27000',2,112);
INSERT INTO orders VALUES ('351022', '714', '22500',3,331);
INSERT INTO orders VALUES ('351023', '715', '29000',4,441);
INSERT INTO orders VALUES ('351024', '716','32000', 5,551);
INSERT INTO orders VALUES ('351025', '717', '33000', 6,552);
INSERT INTO orders VALUES ('351026', '718', '20000',7,553);
INSERT INTO orders VALUES ('351027', '719', '39000',8,554);
INSERT INTO orders VALUES ('351028', '720', '36000',9,555);
INSERT INTO orders VALUES ('751030', '721','34000', 10,113);
INSERT INTO orders VALUES ('351019', '722', '29000',10,6161);
INSERT INTO orders VALUES ('451020', '723', '21000',2,616161);
INSERT INTO orders VALUES ('551020', '723', '18000',1,6262262);
INSERT INTO orders VALUES ('651020', '724', '29000',1,63363636);
INSERT INTO orders VALUES ('751029', '712','22000', 3,736363);


