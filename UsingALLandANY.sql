create table Empregado (
    cpf varchar(15) not null,
    idade int not null,
    salario float not null,
    data_ini date not null,
    n_dep int not null,
    primary key(cpf)
);

insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("123",12,1200,"2019-05-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("343",12,1200,"2019-05-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("456",12,800,"2019-06-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("555",12,800,"2019-06-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("222",12,1400,"2019-06-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("777",12,999,"2018-05-07",2);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("111",22,1009,"2019-05-01",2);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("121",23,1200,"2019-05-01",2);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("191",23,1400,"2019-05-01",2);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("122",23,1200,"2019-05-01",2);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("242",12,1400,"2019-06-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("212",12,1500,"2019-06-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("213",12,1501,"2019-06-01",1);
insert into Empregado (cpf,idade,salario,data_ini,n_dep) values ("214",12,1501,"2019-06-01",1);
#alteradores ALL e ANY
#Exibindo os empregados onde o salário não se repita
#select salario from Empregado;
#select salario from Empregado where n_dep=2;
#select cpf,salario from Empregado where salario !=ALL(select salario from Empregado where n_dep=2);
#Exibir os empregados do dep1 cujo salario
#Se Repirta Entre os empregados do dep2
#select cpf,salario from Empregado where n_dep=1 and salario = any(select salario from Empregado where n_dep=2);
#Exibir os empregados do dep1 cujo salario seja igual ao do dep2
#select cpf,salario from Empregado where n_dep=1 or salario = all(select salario from Empregado where n_dep=2)
#Usando o Distinct, descartando o acumulo do OUTPUT!!!

select Distinct salario from Empregado where n_dep=1 and salario = any(select salario from Empregado where n_dep=2)