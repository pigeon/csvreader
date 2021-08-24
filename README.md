Simply reads CVS file that looks like 

```
iOS 14.6,"iPhone12,1",3
iOS 14.4.2,"iPhone12,1",4
iOS 14.6,"iPhone12,3",5
iOS 14.4.2,"iPhone11,8",6
```

and print to output value like 

`["15": 2, "12": 90, "14": 23, "10": 1, "13": 2, "11": 9]`

## Build ##

to build run `swift build`
to run `swift run`
generate xcode project `swift package generate-xcodeproj`
