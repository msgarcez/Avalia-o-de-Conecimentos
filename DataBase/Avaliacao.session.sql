CREATE TABLE empresa (
    Estado Varchar (30) NOT NULL,
    Nome Varchar (70) NOT NULL,
    CNPJ VARCHAR (15) PRIMARY KEY
);

CREATE TABLE fornecedor(
    Nome VARCHAR (30) NOT NULL,
    CPF_CNPJ VARCHAR (15) PRIMARY KEY,
    Deta_Hora  TIMESTAMP,
    Telefone VARCHAR (11) NOT NULL,
    RG VARCHAR (12),
    Data_Nascimento DATE,
    CNPJ_empresa VARCHAR (15),
    CONSTRAINT fk_empresa FOREIGN KEY (CNPJ_empresa) REFERENCES empresa(CNPJ)
);