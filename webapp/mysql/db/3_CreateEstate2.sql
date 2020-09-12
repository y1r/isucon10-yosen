use isuumo;

insert into estate2(id, name, description, thumbnail, address, latitude, longitude, position, rent, door_height, door_width, features, popularity) select id, name, description, thumbnail, address, latitude, longitude, point(latitude, longitude), rent, door_height, door_width, features, popularity from estate;
