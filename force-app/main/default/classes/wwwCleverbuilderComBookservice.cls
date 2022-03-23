//Generated by wsdl2apex

public class wwwCleverbuilderComBookservice {
    public class AddBookResponse_element {
        public wwwCleverbuilderComBookservice.Book_element Book;
        private String[] Book_type_info = new String[]{'Book','http://www.cleverbuilder.com/BookService/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'Book'};
    }
    public class GetAllBooks_element {
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{};
    }
    public class GetBookResponse_element {
        public wwwCleverbuilderComBookservice.Book_element Book;
        private String[] Book_type_info = new String[]{'Book','http://www.cleverbuilder.com/BookService/',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'Book'};
    }
    public class AddBook_element {
        public wwwCleverbuilderComBookservice.Book_element Book;
        private String[] Book_type_info = new String[]{'Book','http://www.cleverbuilder.com/BookService/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'Book'};
    }
    public class GetBook_element {
        public String ID;
        private String[] ID_type_info = new String[]{'ID','http://www.cleverbuilder.com/BookService/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'ID'};
    }
    public class GetAllBooksResponse_element {
        public wwwCleverbuilderComBookservice.Book_element[] Book;
        private String[] Book_type_info = new String[]{'Book','http://www.cleverbuilder.com/BookService/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'Book'};
    }
    public class Book_element {
        public String ID;
        public String Title;
        public String Author;
        private String[] ID_type_info = new String[]{'ID','http://www.cleverbuilder.com/BookService/',null,'0','1','false'};
        private String[] Title_type_info = new String[]{'Title','http://www.cleverbuilder.com/BookService/',null,'1','1','false'};
        private String[] Author_type_info = new String[]{'Author','http://www.cleverbuilder.com/BookService/',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'ID','Title','Author'};
    }
    public class Books_element {
        public wwwCleverbuilderComBookservice.Book_element[] Book;
        private String[] Book_type_info = new String[]{'Book','http://www.cleverbuilder.com/BookService/',null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.cleverbuilder.com/BookService/','false','false'};
        private String[] field_order_type_info = new String[]{'Book'};
    }
    public class BookServiceSOAP {
        public String endpoint_x = 'http://www.example.org/BookService';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.cleverbuilder.com/BookService/', 'wwwCleverbuilderComBookservice'};
        public wwwCleverbuilderComBookservice.Book_element AddBook(wwwCleverbuilderComBookservice.Book_element Book) {
            wwwCleverbuilderComBookservice.AddBook_element request_x = new wwwCleverbuilderComBookservice.AddBook_element();
            request_x.Book = Book;
            wwwCleverbuilderComBookservice.AddBookResponse_element response_x;
            Map<String, wwwCleverbuilderComBookservice.AddBookResponse_element> response_map_x = new Map<String, wwwCleverbuilderComBookservice.AddBookResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.cleverbuilder.com/BookService/AddBook',
              'http://www.cleverbuilder.com/BookService/',
              'AddBook',
              'http://www.cleverbuilder.com/BookService/',
              'AddBookResponse',
              'wwwCleverbuilderComBookservice.AddBookResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Book;
        }
        public wwwCleverbuilderComBookservice.Book_element[] GetAllBooks() {
            wwwCleverbuilderComBookservice.GetAllBooks_element request_x = new wwwCleverbuilderComBookservice.GetAllBooks_element();
            wwwCleverbuilderComBookservice.GetAllBooksResponse_element response_x;
            Map<String, wwwCleverbuilderComBookservice.GetAllBooksResponse_element> response_map_x = new Map<String, wwwCleverbuilderComBookservice.GetAllBooksResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.cleverbuilder.com/BookService/GetAllBooks',
              'http://www.cleverbuilder.com/BookService/',
              'GetAllBooks',
              'http://www.cleverbuilder.com/BookService/',
              'GetAllBooksResponse',
              'wwwCleverbuilderComBookservice.GetAllBooksResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Book;
        }
        public wwwCleverbuilderComBookservice.Book_element GetBook(String ID) {
            wwwCleverbuilderComBookservice.GetBook_element request_x = new wwwCleverbuilderComBookservice.GetBook_element();
            request_x.ID = ID;
            wwwCleverbuilderComBookservice.GetBookResponse_element response_x;
            Map<String, wwwCleverbuilderComBookservice.GetBookResponse_element> response_map_x = new Map<String, wwwCleverbuilderComBookservice.GetBookResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.cleverbuilder.com/BookService/GetBook',
              'http://www.cleverbuilder.com/BookService/',
              'GetBook',
              'http://www.cleverbuilder.com/BookService/',
              'GetBookResponse',
              'wwwCleverbuilderComBookservice.GetBookResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.Book;
        }
    }
}