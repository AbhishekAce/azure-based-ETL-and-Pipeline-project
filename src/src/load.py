import sqlalchemy

def load_to_sql(df, connection_string, table_name):
  engine = sqlalchemy.create.engine(connection_string)
  df.to_sql(table_name, engine, if_exists='replace', index=False)
