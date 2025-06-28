def transform_data(df):
  #Example transformation: filter and add a column
  df = df[df['status'] == 'active']
  df['processed_at'] = pd.Timestamp.now()
  return df
