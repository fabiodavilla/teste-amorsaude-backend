import { databaseTypes } from 'src/databaseTypes';

import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class Regional {
  @PrimaryColumn(databaseTypes.ID)
  value: string;

  @Column({ nullable: false })
  label: string;
}
