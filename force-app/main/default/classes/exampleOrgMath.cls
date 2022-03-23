//Generated by wsdl2apex

public class exampleOrgMath {
    public class answer_element {
        public Double result;
        private String[] result_type_info = new String[]{'result','http://example.org/math',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://example.org/math','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class add_element {
        public Double x;
        public Double y;
        private String[] x_type_info = new String[]{'x','http://example.org/math',null,'1','1','false'};
        private String[] y_type_info = new String[]{'y','http://example.org/math',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://example.org/math','true','false'};
        private String[] field_order_type_info = new String[]{'x','y'};
    }
    public class MathEndpoint {
        public String endpoint_x = 'math';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://example.org/math', 'exampleOrgMath'};
        public Double sum(Double x,Double y) {
            exampleOrgMath.add_element request_x = new exampleOrgMath.add_element();
            request_x.x = x;
            request_x.y = y;
            exampleOrgMath.answer_element response_x;
            Map<String, exampleOrgMath.answer_element> response_map_x = new Map<String, exampleOrgMath.answer_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://example.org/math/#sum',
              'http://example.org/math',
              'add',
              'http://example.org/math',
              'answer',
              'exampleOrgMath.answer_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
}