import { databaseTypes } from 'src/databaseTypes';
import { PrimaryColumn, Column, Entity } from 'typeorm';

@Entity()
export class Usuario {
  @PrimaryColumn(databaseTypes.ID)
  id: string;

  @Column()
  nome: string;

  @Column()
  email: string;

  @Column()
  senha: string;
}
