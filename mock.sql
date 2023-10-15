-- Guid extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- -- Tables
-- CREATE TABLE IF NOT EXISTS usuario (
--     id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     nome VARCHAR NOT NULL,
--     email VARCHAR NOT NULL,
--     senha VARCHAR NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS regional (
--     value UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     label VARCHAR NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS especialidade (
--     id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     nome VARCHAR NOT NULL
-- );

-- CREATE TABLE IF NOT EXISTS entidade (
--     id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     razaoSocial VARCHAR NOT NULL,
--     nomeFantasia VARCHAR NOT NULL,
--     cnpj VARCHAR NOT NULL,
--     dataInauguracao DATE NOT NULL,
--     Ativa BOOLEAN,
--     regional_id UUID REFERENCES regional(value)
-- );

-- CREATE TABLE IF NOT EXISTS public.entidade_especialidade (
-- 	"entidadeId" uuid NOT NULL,
-- 	"especialidadeId" uuid NOT NULL,
-- 	CONSTRAINT "PK_ba554119f36402f9cd993e2cfbe" PRIMARY KEY ("entidadeId", "especialidadeId")
-- );
-- CREATE INDEX "IDX_20b6e735fa7c2b2070b86f10b3" ON public.entidade_especialidade USING btree ("especialidadeId");
-- CREATE INDEX "IDX_ff518c2f1cf6b9b7bd2e15424f" ON public.entidade_especialidade USING btree ("entidadeId");


-- -- public.entidade_especialidade foreign keys

-- ALTER TABLE public.entidade_especialidade ADD CONSTRAINT "FK_20b6e735fa7c2b2070b86f10b31" FOREIGN KEY ("especialidadeId") REFERENCES public.especialidade(id) ON DELETE CASCADE ON UPDATE CASCADE;
-- ALTER TABLE public.entidade_especialidade ADD CONSTRAINT "FK_ff518c2f1cf6b9b7bd2e15424f1" FOREIGN KEY ("entidadeId") REFERENCES public.entidade(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- Usuarios
INSERT INTO usuario (id, nome, email, senha)
VALUES (uuid_generate_v4(), 'admin', 'admin@email.com', 'senha123') ON CONFLICT DO NOTHING;

INSERT INTO usuario (id, nome, email, senha)
VALUES (uuid_generate_v4(), 'Fabio', 'fabio@email.com', 'senha123') ON CONFLICT DO NOTHING;

-- Regionais
INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'Alto tietê') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'Interior') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'ES') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'SP Interior') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'SP') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'SP2') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'MG') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'Nacional') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'SP CAV') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'RJ') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'NE1') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'NE2') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'SUL') ON CONFLICT DO NOTHING;

INSERT INTO regional (value, label)
VALUES (uuid_generate_v4(), 'Norte') ON CONFLICT DO NOTHING;

-- Especialidades
INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Acupuntura') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Alergia e Imunologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Anestesiologista') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Angiologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cardiologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Cardiovascular') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia da Mão') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia de Cabeça e Pescoço') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia do Aparelho Digestivo') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Geral') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Oncológica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Pediátrica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Plástica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Torácica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Cirurgia Vascular') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Clínica Médica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Coloproctologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Conheça as Áreas de Atuação Médica Reconhecidas') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Dermatologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Endocrinologia e Metabologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Endoscopia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Gastroenterologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Genética Médica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Geriatria') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Ginecologia e Obstetrícia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Hematologia e Hemoterapia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Homeopatia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Infectologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Mastologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina de Emergência') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina de Família e Comunidade') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina de Tráfego') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina do Trabalho') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina Esportiva') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina Física e Reabilitação') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina Intensiva') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina Legal e Perícia Médica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina Nuclear') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Medicina Preventiva e Social') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Nefrologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Neurocirurgia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Neurologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Nutrologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Oftalmologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Oncologia Clínica') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Ortopedia e Traumatologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Otorrinolaringologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Patologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Patologia Clínica/Medicina Laboratorial') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Pediatria') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Pneumologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Psiquiatria') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Radiologia e Diagnóstico por Imagem') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Radioterapia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Residência Médica e Título de Especialista') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Reumatologia') ON CONFLICT DO NOTHING;

INSERT INTO especialidade (id, nome)
VALUES (uuid_generate_v4(), 'Urologia') ON CONFLICT DO NOTHING;