
function Cipher(key) {
  this.key = key || 'aaaaaaaaaa';
}

Cipher.prototype.encode = function(code) {
  return code;
}

Cipher.prototype.decode = function(encrpytedText) {
  return encrpytedText;

}

module.exports = Cipher;

