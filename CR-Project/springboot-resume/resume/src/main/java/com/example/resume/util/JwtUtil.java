package com.example.resume.util;

import java.security.Key;
import java.util.Date;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.JwtParser;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Component
public class JwtUtil {
  public String createJwt(String email) {
    SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
    // 문자 1개 = 6bit, 24bit(문자 4개) = 1개 단위
    // 240bit 보다 큰 값의 secretKey 사용 => 44개 이상의 문자 필요
    byte[] secretKeyBytes = DatatypeConverter.parseBase64Binary(
        "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqr");
    Key signingKey = new SecretKeySpec(secretKeyBytes, signatureAlgorithm.getJcaName());
    JwtBuilder builder = Jwts.builder()
        .setHeaderParam("typ", "JWT")
        .claim("email", email)
        .signWith(signingKey, signatureAlgorithm);
    long now = System.currentTimeMillis();
    builder.setExpiration(new Date(now + 3600000));
    String token = builder.compact();
    return token;
  }

  public String getDataFromJwt(String jwt) {
    byte[] secretKeyBytes = DatatypeConverter.parseBase64Binary(
        "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqr");
 
    JwtParser jwtParser = Jwts.parserBuilder().setSigningKey(secretKeyBytes).build();
    JwsHeader<?> header = jwtParser.parseClaimsJws(jwt).getHeader();
    String algorithm = header.getAlgorithm();
    String type = header.getType();
    Claims claims = jwtParser.parseClaimsJws(jwt).getBody();
    return (String) claims.get("email");
  }
}


