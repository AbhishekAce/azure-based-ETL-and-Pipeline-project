import pandas as pd

def extract_from_blob(blob_service_client, container_name, blob_name):
  blob_client = blob_service_client.get_blob_client(container=container_name, blob=blob_name)
  download_stream = blob_client.download_blob()
  df  = pd.read_csv(download_stream)
  return dft
