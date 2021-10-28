import logging

def __init_log(logfile: str):
  log_level = logging.INFO
  if logfile is None:
    log_stream = sys.stdout

  log_format = "%(asctime)s - %(levelname)-5s %(name)s %(lineno)s - %(message)s"
  log_date_format = "%Y-%m-%d %H:%M:%S"
  if logfile is None:
    logging.basicConfig(level=log_level, stream=log_stream, format=log_format, datefmt=log_date_format)
  else:
    logging.basicConfig(level=log_level, filename=logfile, format=log_format, datefmt=log_date_format)
