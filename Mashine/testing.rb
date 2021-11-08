connected{ download_email }

def connect_to_internet
  # code here
end

def connected
  connect_to_internet
  result = yield
  disconnect
  result
end

def connected
  connect_to_internet
  begin
    result = yield
  ensure
    disconnect
  end
  result
end