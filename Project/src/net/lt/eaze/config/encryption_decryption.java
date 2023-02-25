package net.lt.eaze.config;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class encryption_decryption {
        String text = "Hello World";
        String key = "Bar12345Bar12345"; // 128 bit key
        // Create key and cipher
        private String encryptedValue;
        private String decryptedValue;
        
        
        
        
        
        public String getEncryptedValue() {
			return encryptedValue;
		}
		public void setEncryptedValue(String textToBeEncrypted) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(Cipher.ENCRYPT_MODE, aesKey);
            byte[] encrypted = cipher.doFinal(textToBeEncrypted.getBytes());
            System.out.println(encrypted.toString());
            textToBeEncrypted = encrypted.toString();
			this.encryptedValue = textToBeEncrypted;
		}
		
		
		public String getDecryptedValue() {
			return decryptedValue;
		}
		public void setDecryptedValue(String encryptedText) throws IllegalBlockSizeException, BadPaddingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException {
			System.out.println("in string1: "+encryptedText);
			Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES");
			cipher.init(Cipher.DECRYPT_MODE, aesKey);
			System.out.println("in string2: "+encryptedText);
			byte[] b = encryptedText.getBytes();
			System.out.println("in bytes: "+b);
	        String decrypted = new String(cipher.doFinal(b));
			this.decryptedValue = encryptedText;
		}
		
		
//		Key aesKey = new SecretKeySpec(key.getBytes(), "AES");
//        Cipher cipher = Cipher.getInstance("AES");
        // encrypt the text
//        cipher.init(Cipher.ENCRYPT_MODE, aesKey);
//        byte[] encrypted = cipher.doFinal(text.getBytes());
//        System.err.println(new String(encrypted));
//        // decrypt the text
//        cipher.init(Cipher.DECRYPT_MODE, aesKey);
//        String decrypted = new String(cipher.doFinal(encrypted));
//        System.err.println(decrypted);
}
