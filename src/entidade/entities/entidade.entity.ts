import {
  Column,
  Entity,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryColumn,
} from 'typeorm';
import { Regional } from './regional.entity';
import { databaseTypes } from 'src/databaseTypes';
import { Especialidade } from './especialidade.entity';

@Entity()
export class Entidade {
  @PrimaryColumn(databaseTypes.ID)
  id: string;

  @Column({ nullable: false })
  razaoSocial: string;

  @Column({ nullable: false })
  nomeFantasia: string;

  @Column({ nullable: false })
  cnpj: string;

  @Column({ nullable: false })
  dataInauguracao: Date;

  @Column()
  Ativa: boolean;

  @ManyToOne(() => Regional)
  regional: Regional;

  @ManyToMany(() => Especialidade)
  @JoinTable({
    name: 'entidade_especialidade',
  })
  especialidades: Especialidade[];
}
