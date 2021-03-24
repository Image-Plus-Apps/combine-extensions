# combine-unpack

[![Swift](https://github.com/richard-clements/combine-unpack/actions/workflows/swift.yml/badge.svg)](https://github.com/richard-clements/combine-unpack/actions/workflows/swift.yml)

Unpacking of large tuple outputs when using combine

```
publisher1
  .combineLatest(publisher2)
  .combineLatest(publisher3)
  .combineLatest(publisher4)
  .combineLatest(publisher5)
  .unpack()
  .sink { value1, value2, value3, value4, value5 in 
  
  }
```
