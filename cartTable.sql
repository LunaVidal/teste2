CREATE database cartTable;
USE cartTable;
CREATE TABLE cart(
 id INT primary key auto_increment,
 cliente_id int not null,
 produto_id int not null,
 quantidade int not null default 1,
 preço_unitario decimal(10,2) not null,
 total decimal(10,2) generated alwats as(quantidade * preço_unitario) stored,
 criado em timestamp default current timestamp,
 atualizado_em timestamp default current_timestamp on update current_timestamp,
 FOREIGN key(cliente_id) references clientes(id) on delete cascade,
 FOREIGN key(produto_id) references produto(id) on delete cascade,
 
);