# The "Execute Around" pattern

# Collect Timing (simple example)
def with_timing
  if block_given?
    start = Time.now
    yield
    puts "Time taken: #{Time.now - start} seconds"
  end
end

def run_operation_1
  sleep(1)
end

def run_operation_2; end

with_timing do
  run_operation_1
  run_operation_2
end

# Implement a transaction (a more complex example)
class DBError < RuntimeError; end

# document class
class Database
  def start_transaction
    puts 'Starting transaction...'
  end

  def rollback_transaction
    puts 'Rolling-back transaction...'
  end

  def commit_transaction
    puts 'Committing transaction...'
  end

  def log_error(message)
    puts message.to_s
  end

  def transaction
    start_transaction
    begin
      yield
    rescue DBError => e
      rollback_transaction
      log_error e.message
      return
    end
    commit_transaction
  end

  def load_files_without_error
    transaction do
      puts 'loading files...'
      puts 'files loaded'
    end
  end

  def load_files_with_error
    transaction do
      puts 'hey, something went wrong'
      raise DBError, 'Error details: could not read file A.'
    end
  end

  private :start_transaction, :rollback_transaction, :commit_transaction,
          :log_error, :transaction
end

db = Database.new
db.load_files_without_error
db.load_files_with_error
