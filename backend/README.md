# Dart Frog Playground Backend

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

Dart Frog Playground Backend

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

## Routes

- POST /api/v1/auth/login → returns the access token
- POST /api/v1/auth/register → returns HTTPSTATUS.CREATED
- GET /api/v1/profile → returns the profile information of current user

## Tools Used

- [dart_frog](https://pub.dev/packages/dart_frog)
- [mongo_dart](https://pub.dev/packages/mongo_dart)
- [dartz](https://pub.dev/packages/dartz)
- [dart_jsonwebtoken](https://pub.dev/packages/dart_jsonwebtoken)
- [encrypt](https://pub.dev/packages/encrypt)
- [uuid](https://pub.dev/packages/uuid)
- [mocktail](https://pub.dev/packages/mocktail)
- [very_good_analysis](https://pub.dev/packages/very_good_analysis)
