import { databaseTypes } from 'src/databaseTypes';
import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Especialidade {
  @PrimaryColumn(databaseTypes.ID)
  id: string;

  @Column({ nullable: false })
  nome: string;
}
