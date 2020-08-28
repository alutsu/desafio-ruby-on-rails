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
      end
    end
  end
end
