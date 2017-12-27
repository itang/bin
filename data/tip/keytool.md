# keytool

## Usage

    links: https://docs.oracle.com/javase/6/docs/technotes/tools/solaris/keytool.html

    ## -genseckey {-alias alias} {-keyalg keyalg} {-keysize keysize} [-keypass keypass] {-storetype storetype} {-keystore keystore} [-storepass storepass] {-providerClass provider_class_name {-providerArg provider_arg}} {-v} {-protected} {-Jjavaoption}
    Generates a secret key and stores it in a new KeyStore.SecretKeyEntry identified by alias
    $ keytool -genseckey help
    $ keytool -genseckey -keystore keystore.jceks -storetype jceks -storepass 123456 -keyalg HMacSHA256 -keysize 2048 -alias HS256 -keypass 234567

    ## -genkeypair {-alias alias} {-keyalg keyalg} {-keysize keysize} {-sigalg sigalg} [-dname dname] [-keypass keypass] {-validity valDays} {-storetype storetype} {-keystore keystore} [-storepass storepass] {-providerClass provider_class_name {-providerArg provider_arg}} {-v} {-protected} {-Jjavaoption}
    Generates a key pair (a public key and associated private key). Wraps the public key into an X.509 v3 self-signed certificate, which is stored as a single-element certificate chain. This certificate chain and the private key are stored in a new keystore entry identified by alias.

    $ keytool -genkeypair -dname "cn=Mark Jones, ou=JavaSoft, o=Sun, c=US" -alias business -keypass kpi135 -keystore /working/mykeystore -storepass ab987c -validity 180
    $ keytool -genkeypair -alias mykey -keyalg DSA -keysize 1024 -sigalg DSA -keypass 123456 -storetype jceks -keystore a.jceks -storepass 123456 -v

    ## -importcert {-alias alias} {-file cert_file} [-keypass keypass] {-noprompt} {-trustcacerts} {-storetype storetype} {-keystore keystore} [-storepass storepass] {-providerName provider_name} {-providerClass provider_class_name {-providerArg provider_arg}} {-v} {-protected} {-Jjavaoption} 
    Reads the certificate or certificate chain (where the latter is supplied in a PKCS#7 formatted reply) from the file cert_file, and stores it in the keystore entry identified by alias

    $ keytool -certreq -alias mykey -sigalg DSA -file c.req -keypass 123456 -storetype jceks -storepass 123456 -keystore a.jceks
    $ keytool -exportcert -alias mykey -sigalg DSA -file c.cert -keypass 123456 -storetype jceks -storepass 123456 -keystore a.jceks

    ## keytool -printcert {-file cert_file} {-v}
    $ keytool -printcert -file VScert.cer
