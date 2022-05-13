# HiGHS-docker
A Docker image for the [HiHGS](https://github.com/ERGO-Code/HiGHS) Linear optimization software

## Build
```shell
$ docker build -t highs-docker /path/to/Dockerfile
```

## Run
```shell
$ docker run -itd --name highs highs-docker /bin/sh
```

## Verify
Connect to the container
```shell
$ docker attach highs
```

Go the `/HiGHS/build` folder and execute `ctest`
```shell
$ cd HiGHS/build
$ ctest
/HiGHS/build # ctest 

Test project /HiGHS/build
        Start   1: capi_unit_tests
  1/148 Test   #1: capi_unit_tests ..................   Passed    0.03 sec
  
  ...
  
  148/148 Test #148: dcmulti--random_seed=3 ...........   Passed    3.11 sec

100% tests passed, 0 tests failed out of 148

Total Test time (real) =  53.00 sec

```
