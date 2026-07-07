class ApiConstants {
  static const String baseUrl = 'https://api.sandbox.co.in';
  static const String authToken = 'eyJhbGciOiJIUzUxMiJ9.eyJhdWQiOiJBUEkiLCJyZWZyZXNoX3Rva2VuIjoiZXlKaGJHY2lPaUpJVXpVeE1pSjkuZXlKaGRXUWlPaUpCVUVraUxDSnpkV0lpT2lKb1lYSnphR0ZzTG0xbGFIUmhRR3hwWjJoMFltVnljbmt1YVc0aUxDSmhjR2xmYTJWNUlqb2lhMlY1WDJ4cGRtVmZZV3B5U0RWdVFVUm9jbTFQY25OT05HZHhSVkl5TW10WlRXZzBWRU5vZUdFaUxDSnBjM01pT2lKaGNHa3VjMkZ1WkdKdmVDNWpieTVwYmlJc0ltVjRjQ0k2TVRjMk9EWXpOREl6Tnl3aWFXNTBaVzUwSWpvaVVrVkdVa1ZUU0Y5VVQwdEZUaUlzSW1saGRDSTZNVGN6TnpBNU9ESXpOMzAuV3dBVF9US3V1bUJ5QmlLLUNnZ3VBYTlJVjRVTUNwQ3hENWRhT3FLUW5PbzJScU1MbnhXX3pHUGw5Q0ptMXhod2sxZVhoQ3NyVm9UMk5HWW9Bd0N2R0EiLCJzdWIiOiJoYXJzaGFsLm1laHRhQGxpZ2h0YmVycnkuaW4iLCJhcGlfa2V5Ijoia2V5X2xpdmVfYWpySDVuQURocm1PcnNONGdxRVIyMmtZTWg0VENoeGEiLCJpc3MiOiJhcGkuc2FuZGJveC5jby5pbiIsImV4cCI6MTczNzE4NDYzNywiaW50ZW50IjoiQUNDRVNTX1RPS0VOIiwiaWF0IjoxNzM3MDk4MjM3fQ.M0NdQMmlJ31QY4BwSDYiv9nv9nVRvwH4Kyn2w51nxXUOg69_Y7fj6_BbBvmg-eLM1eiewzTmytWhOJ_nRDdwxg';
  static const String apiKey = 'key_live_ajrH5nADhrmOrsN4gqER22kYMh4TChxa';
  static const String apiVersion = '2.0';

  // API Endpoints
  static const String generateOtpEndpoint = '/kyc/aadhaar/okyc/otp';
  static const String verifyOtpEndpoint = '/kyc/aadhaar/okyc/otp/verify';

  // Request Headers
  static Map<String, String> get headers => {
    'accept': 'application/json',
    'authorization': authToken,
    'content-type': 'application/json',
    'x-api-key': apiKey,
    'x-api-version': apiVersion,
  };

  // Request Entity Types
  static const String generateOtpEntity = 'in.co.sandbox.kyc.aadhaar.okyc.otp.request';
  static const String verifyOtpEntity = 'in.co.sandbox.kyc.aadhaar.okyc.request';

  // Sample request body for debugging
  static Map<String, dynamic> generateOtpBody(String aadhaarNumber) => {
    "@entity": generateOtpEntity,
    "aadhaar_number": aadhaarNumber,
    "consent": "Y",
    "reason": "for know your customer purposes"
  };

  static Map<String, dynamic> verifyOtpBody(String referenceId, String otp) => {
    "@entity": verifyOtpEntity,
    "reference_id": referenceId,
    "otp": otp
  };
} 