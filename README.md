# json-web-key-generator on Docker

JSON Web Key (JWK) および JSON Private/Shared Keys (JPSKs) のコマンドライン Java ベースのジェネレータです。

このリポジトリは、[Apache 2.0 ライセンス](https://www.apache.org/licenses/LICENSE-2.0)で配布されている製作物が含まれています。

- [mitreid\-connect/json\-web\-key\-generator: A Java\-based generator for JWK and JPSKs](https://github.com/mitreid-connect/json-web-key-generator)

## 実行方法

Docker Hub のイメージで実行する場合

```bash
docker run intercept6/json-web-key-generator -t <keyType> [options]
```

自分でビルドして実行する場合

```bash
docker build -t json-web-key-generator .
docker run json-web-key-generator -t <keyType> [options]
```

## コマンドオプション

```
usage: java -jar json-web-key-generator.jar -t <keyType> [options]
 -t,--type <arg>           Key Type, one of: RSA, oct, EC, OKP
 -s,--size <arg>           Key Size in bits, required for RSA and oct key
                           types. Must be an integer divisible by 8
 -c,--curve <arg>          Key Curve, required for EC or OKP key type.
                           Must be one of P-256, secp256k1, P-384, P-521
                           for EC keys or one of Ed25519, Ed448, X25519,
                           X448 for OKP keys.
 -u,--usage <arg>          Usage, one of: enc, sig (optional)
 -a,--algorithm <arg>      Algorithm (optional)
 -i,--id <arg>             Key ID (optional), one will be generated if not
                           defined
 -g,--idGenerator <arg>    Key ID generation method (optional). Can be one
                           of: date, timestamp, sha256, sha1, none. If
                           omitted, generator method defaults to
                           'timestamp'.
 -I,--noGenerateId         <deprecated> Don't generate a Key ID.
                           (Deprecated, use '-g none' instead.)
 -p,--showPubKey           Display public key separately (if applicable)
 -S,--keySet               Wrap the generated key in a KeySet
 -o,--output <arg>         Write output to file. Will append to existing
                           KeySet if -S is used. Key material will not be
                           displayed to console.
 -P,--pubKeyOutput <arg>   Write public key to separate file. Will append
                           to existing KeySet if -S is used. Key material
                           will not be displayed to console. '-o/--output'
                           must be declared as well.
 -x,--x509                 Display keys in X509 PEM format
```
