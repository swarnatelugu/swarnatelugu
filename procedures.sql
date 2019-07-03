//add route

DELIMITER $$
drop PROCEDURE if exists addRoute $$
create procedure addRoute(in p_route_id integer(10),in p_loc_from varchar(50),in p_loc_to varchar(50),in p_distance integer(10),in p_fare integer(10))
BEGIN
insert into bus_route(route_id,loc_from,loc_to,distance,fare)values
(p_route_id,p_loc_from,p_loc_to,p_distance,p_fare);
END $$
DELIMITER ;

//Update route

DELIMITER $$
drop PROCEDURE if exists updateRoute $$
create procedure updateRoute(in p_route_id integer(10),in p_loc_from varchar(50),in p_loc_to varchar(50),in p_distance integer(10),in p_fare integer(10))
BEGIN
update bus_route set route_id=p_route_id,loc_from=p_loc_from,loc_to=p_loc_to,distance=p_distance,fare=p_fare);
END $$
DELIMITER ;


//delete route
DELIMITER $$
drop PROCEDURE if exists deleteRoute $$
create procedure deleteRoute(in p_route_id integer(10),in p_loc_from varchar(50),in p_loc_to varchar(50),in p_distance integer(10),in p_fare integer(10))
BEGIN
delete from bus_route;
END $$
DELIMITER ;

//retrieve route

DELIMITER $$
drop PROCEDURE if exists selectRoute $$
create procedure selectRoute(in p_route_id integer(10))
BEGIN
select * from bus_route where route_id=p_route_id;
END $$
DELIMITER ;

//add bus schedule

DELIMITER $$
drop PROCEDURE if exists addBusSchedule $$
create procedure addBusSchedule(in p_s_id integer(10),in p_fk_bus_routeid integer(10),in p_fk_bus_regno varchar(30),in p_arrival_time TIME,in p_depart_time TIME)
BEGIN
insert into bus_schedule(s_id,fk_bus_routrid,fk_bus,regno,arrival_time,depart_time)values(p_s_id,p_fk_bus_routeid,p_fk_bus_regno,p_arrival_time,p_depart_time);
END $$
DELIMITER ;

//update schedule
drop PROCEDURE if exists updateBusSchedule $$
create procedure updateBusSchedule(in p_s_id integer(10),in p_fk_bus_routeid integer(10),in p_fk_bus_regno varchar(30),in p_arrival_time TIME,in p_depart_time TIME)
BEGIN
update bus_schedule set s_id=p_s_id,fk_bus_routrid=p_fk_bus_routeid,fk_bus,regno=p_fk_bus_regno,arrival_time=p_arrival_time,depart_time=p_depart_time;
END $$
DELIMITER ;


//delete schedule
drop PROCEDURE if exists deleteBusSchedule $$
create procedure deleteBusSchedule(in p_s_id integer(10),in p_fk_bus_routeid integer(10),in p_fk_bus_regno varchar(30),in p_arrival_time TIME,in p_depart_time TIME)
BEGIN
delete from bus_schedule;
END $$
DELIMITER ;

//Retrieve schedule
drop PROCEDURE if exists selectBusSchedule $$
create procedure selectBusSchedule(in p_s_id integer(10))
BEGIN
select * from bus_schedule where s_id=p_s_id;
END $$
DELIMITER ;

//add feedback

DELIMITER $$
drop PROCEDURE if exists addFeedBack $$
create procedure addFeedBack(in p_feedback integer(10), in p_passengerName VARCHAR(50),in p_passengerEmail varchar(50),in p_comment varchar(150),in p_createdAt TIMESTAMP, in p_routeId interger(10))
BEGIN
insert into addFeedBack
(feedback,passenger_name,passenger_email,comment,created_at,route_id)values(p_feedback,p_passengerName, p_passengerEmail,p_comment,p_createdAt,p_routeId);
END $$
DELIMITER ;

//update feedback
DELIMITER $$
drop PROCEDURE if exists updateFeedBack $$
create procedure updateFeedBack(in p_feedback integer(10), in p_passengerName VARCHAR(50),in p_passengerEmail varchar(50),in p_comment varchar(150),in p_createdAt TIMESTAMP, in p_routeId interger(10))
BEGIN
update updateFeedBack set feedback=p_feedback,passenger_name=p_passengerName,passenger_email=p_passengerEmail,comment=p_comment,created_at=p_createdAt,route_id=p_routeId;
END $$
DELIMITER ;

//delete feedback
DELIMITER $$
drop PROCEDURE if exists deleteFeedBack $$
create procedure deleteFeedBack(in p_feedback integer(10), in p_passengerName VARCHAR(50),in p_passengerEmail varchar(50),in p_comment varchar(150),in p_createdAt TIMESTAMP, in p_routeId interger(10))
BEGIN
delete from deleteFeedBack;
END $$
DELIMITER ;

//Retrieve feedback
DELIMITER $$
drop PROCEDURE if exists selectFeedBack $$
create procedure selectFeedBack





//add identity
DELIMITER $$
drop PROCEDURE if exists addIdentity $$
create procedure addIdentity(in p_identityId integer(10),in p_identityType varachar(20),in p_identityDetail varchar(20))
BEGIN
insert into addIdentity(identity_id,identity_type,identity_detail)values(p_identityId,p_identityType,p_identityDetail);
END $$
DELIMITER ;

//update identity
DELIMITER $$
drop PROCEDURE if exists updateIdentity $$
create procedure updateIdentity(in p_identityId integer(10),in p_identityType varachar(20),in p_identityDetail varchar(20))
BEGIN
update updateIdentity set identity_id=p_identityId,identity_type=p_identityType,identity_detail=p_identityDetail;
END $$
DELIMITER ;


//delete identity
DELIMITER $$
drop PROCEDURE if exists deleteIdentity $$
create procedure deleteIdentity(in p_identityId integer(10),in p_identityType varachar(20),in p_identityDetail varchar(20))
BEGIN
delete from identity;
END $$
DELIMITER ;

//retrieve identity

DELIMITER $$
drop PROCEDURE if exists selectIdentity $$
create procedure selectIdentity(in p_identity_id integer(10))
BEGIN
select * from identity where identity_id=p_identity_id;
END $$
DELIMITER ;


//add gallery
DELIMITER $$
drop PROCEDURE if exists addGallery $$
create procedure addGallery(in p_gBusNo varchar(10),in p_imgLocation varchar(50))
BEGIN
insert into gallery(g_bus_no,img_location)values(p_gBusNo,p_imgLocation);
END $$
DELIMITER ;


//update gallery
DELIMITER $$
drop PROCEDURE if exists updateGallery $$
create procedure updateGallery(in p_gBusNo varchar(10),in p_imgLocation varchar(50))
BEGIN
update gallery set p_gBusNo=p_gBusNo,p_imgLocation=p_imgLocation;
END $$
DELIMITER ;

//delete gallery
DELIMITER $$
drop PROCEDURE if exists deleteGallery $$
create procedure deleteGallery(in p_gBusNo varchar(10),in p_imgLocation varchar(50))
BEGIN
delete from gallery;
END $$
DELIMITER ;

//add payment
DELIMITER $$
drop PROCEDURE if exists addPayment $$
create procedure addPayment(in p_payment_id integer(11),in p_pmtPnrNo integer(15),in p_totalAmount integer(10),p_paymentType varchar(10))
BEGIN
insert into payment_detail(payment_id,pmt_pnr_no,total_amount,payment_type)values(p_paymentId,p_pmtPnrNo,p_totalAmount,p_paymentType);
END $$
DELIMITER ;

//update payment
DELIMITER $$
drop PROCEDURE if exists updatePayment $$
create procedure updatePayment(in p_payment_id integer(11),in p_pmtPnrNo integer(15),in p_totalAmount integer(10),p_paymentType varchar(10))
BEGIN
update payment_detail set payment_id=p_paymentId,pmt_pnr_no=p_pmtPnrNo,total_amount=p_totalAmount,payment_type=p_paymentType ;
END $$
DELIMITER ;

//delete payment
DELIMITER $$
drop PROCEDURE if exists deletePayment $$
create procedure deletePayment(in p_payment_id integer(10),in p_pmtPnrNo integer(15),in p_totalAmount integer(10),p_paymentType varchar(10))
BEGIN
delete from payment_detail;
END $$
DELIMITER ;

//retrieve payment
DELIMITER $$
drop PROCEDURE if exists selectPayment $$
create procedure deletePayment(in p_payment_id integer(10))
BEGIN
select * from payment_detail where payment_id=p_payment_id;
END $$
DELIMITER ;

//delete bus detail
DELIMITER $$
drop PROCEDURE if exists deleteBusDetail $$
create procedure deleteBusDetail(in p_bus_no integer(15),in p_bus_name varchar(20),in p_bus_type varchar(20),in p_total_seats integer(10))
BEGIN
delete from bus_detail where bus_no=p_bus_no;
END $$
DELIMITER ;

//Retrieve bus detail
DELIMITER $$
drop PROCEDURE if exists selectBusDetail $$
create procedure selectBusDetail(in p_bus_no integer(15))
BEGIN
select * from bus_detail where bus_no=p_bus_no;
END $$;
DELIMITER ;


















