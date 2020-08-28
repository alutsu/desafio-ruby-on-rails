module CnabUpload
  class UploadService
    def initialize(file)
      @file = file
    end

    def call
      @file = File.open(@file.tempfile.path, 'r')

      @file.each do |row|
        store_owner = row[48..61].strip
        store_name = row[62..80].strip
        date = row[1..8].to_date
        value = row[9..18].to_f / 100
        cpf = row[19..29]
        card_number = row[30..42]
        time = value_to_time(row[43..47])
        store = Store.find_or_create_by(name: store_name, owner: store_owner)
        transaction_type = TransactionType.find(row[0])
        transaction = transaction_type.transaction.new
        transaction.store = store
        transaction.date = date
        transaction.value = value
        transaction.cpf = cpf
        transaction.card_number = card_number
        transaction.time = time
      end
    end

    def value_to_time(time)
      time.gsub(/^(\d{2})(\d{2})(\d{2})$/, '\1:\2:\3').to_time
    end
  end
end
