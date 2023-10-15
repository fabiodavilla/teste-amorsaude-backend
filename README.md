1. **Criar o Banco de Dados:**

Para criar o banco de dados, execute o seguinte comando Docker:

```bash
docker run -d -e POSTGRES_DB=banco_dados -e POSTGRES_USER=usuario -e POSTGRES_PASSWORD=senha123 -p 5432:5432 postgres
```

2. **Executar o programa:**

Para iniciar a aplicação, utilize o seguinte comando npm:

```bash
 npm start:dev
```
