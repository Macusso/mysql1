-- Inserção de dados e queries
show databases;
use ecommerce;
show tables;

-- idCliente, Fname, Minit, Lname, CPF, Address
insert into Clients (Fname, Minit, Lname, CPF, Address)
	values('Maria','M','Silva',12346789,'rua prata 29, Cidade Azul'),
		  ('Matheus','O','Pimentel',987562314,'rua alemeda 289, Cidade Azul'),
          ('Ricardo','F','Silva',456321479,'rua vinha 1009, Cidade Azul'),
          ('Julia','S','França',789652314,'rua larga 83, Cidade Azul'),
          ('Roberta','G','Assis',987458693,'Av koller 19, Cidade Azul'),
          ('Isabela','M','Cruz',654852147,'rua das flores 28, Cidade Azul');
          

-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into product (Pname, classification_kids, category, avaliação, size) values
			('Fone Ouvido',false,'Eletrônico','4',null),
            ('Barbie',true,'Brinquedos','3',null),
            ('Body',true,'Vestimenta','5',null),
            ('Microfone',false,'Eletrônico','4',null),
            ('Sofá',false,'Móveis','3','3x57x80'),
            ('Farinha Milho',false,'Alimentos','2',null),
            ('Fire Stick',false,'Eletrônico','3',null);
            
 -- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash 
 insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
             (1, null,'compra via aplicativo',null,1),
             (2, null,'compra via aplicativo',50,0),
             (3,'Confirmado',null,null,1),
             (4, null,'compra via web site',150,0);
			
-- idPOproduct, idPOorder, poQuantity, poStatus
select * from orders;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
				(1,1,2,null),
                (2,1,1,null),
                (3,2,1,null);
                
-- storageLocation, quantity
insert into productStorage (storageLocation,quantity) values
				('Rio de Janeiro',1000),
                ('Rio de Janeiro',500),
                ('São Paulo',10),
                ('São Paulo',100),
                ('São Paulo',10),
                ('Brasilia',60);
                
-- idLproduct, idLstorage, location
insert into storageLocation (idLproduct, idLstorage, location) values
				(1,2,'RJ'),
				(2,6,'GO');
                
-- idSupplier, SocialName, CNPJ, contact
insert into supplier (SocialName, CNPJ, contact) values
				('Almeida e filhos', 123456789653214, '258741258'),
				('Eletrônicos Silva', 854758789653214, '218369258'),
                ('Eletrônicos Valma', 934568789653214, '218365474');
                
                
-- idPsSupplier, idPsProduct, quantity
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
						(1,1,500),
                        (1,2,400),
                        (2,4,633),
                        (3,3,5),
                        (2,5,10);
                        
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
		('Tecn eletronics', null, 123654789521478, null, 'Rio de Janeiro', 214578963),
        ('Botique Durgas', null,257845124578963, 478952147, 'Rio de Janeiro', 214852463),
        ('Kids World', null, 896354789521478, null, 'São Paulo', 114578963);
        
-- idPseller, idPproduct, prodQuantity
insert into productSeller (idPseller, idPproduct, prodQuantity) values
				(1,6,80),
                (2,7,10);
                
select *  from productSeller;
select Fname from clients;

select Fname,Lname, idOrder, orderStatus from clients c, orders o where c.idClient = idOrderClient;

select * from clients order by Fname asc; 


        
        
        
        


                        
                        
                
                
                
                
            
