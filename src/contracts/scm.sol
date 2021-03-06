pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract Scm {
  mapping(string => string) signup;
  string[] usernames_signup = ["bharath123"];
  

  function set_signup(string memory pub_key, string memory signup_hash) public {
    signup[pub_key] = signup_hash;
    usernames_signup.push(pub_key);
  }

  function get_signup(string memory pub_key) public view returns (string memory) {
    return signup[pub_key];
  }
  
  function get_usernames() public view returns (string[] memory) {
    return usernames_signup;
  }
  
  /*function add_signup_usernames(string memory pub_key) public {
    usernames_signup.push(pub_key);
  }*/
  
}