RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
 
    # For each question, write the code that should go here
    database_connection = double("db", connect: true, disconnect: 'Goodbye')
    expect(database_connection.connect).to eq(true)
    expect(database_connection.disconnect).to eq('Goodbye')
  
    file_system = double("fs")
    allow(file_system).to receive(:read).and_return('Romeo and Juliet')
    allow(file_system).to receive(:write).and_return(false)

    allow(file_system).to receive_messages(read: 'Romeo and Juliet', write: false)
  

  #teacher's example
db = double("Database Connection", connect: true, disconnect: 'Goodbye')
expect(db.connect).to eq(true)
expect(db.disconnect).to eq('Goodbye')

fs = double("File System")
allow(fs).to receive(:read).and_return("Romeo and Juliet")
allow(fs).to receive(:write).and_return(false)
  end
end