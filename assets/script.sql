drop database if exists gestion_recettes;
create database if not exists gestion_recettes;

use gestion_recettes;

create table recettes(
   id int auto_increment,
   titre varchar(50) not null,
   ingredients varchar(255) not null,
   type varchar(100) not null,
   constraint pk_recette primary key(id)
);

INSERT INTO recettes (titre, ingredients, type)
VALUES
    ('Salade César', 'laitue romaine, poulet grillé, parmesan, croûtons, sauce César', 'Entrée'),
    ('Gâteau au chocolat', 'chocolat noir, sucre, œufs, farine, levure', 'Dessert');


create table categories(
   id int auto_increment,
   nom varchar(50) not null,
   constraint pk_categorie primary key(id)
);

alter table recettes add column categorie_id int not null;
alter table recettes add constraint fk_cat foreign key(categorie_id) references categories(id) on delete restrict;
