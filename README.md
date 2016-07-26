Ktail
===

Tail the logs of multiple Kubernetes pods

Usage
---

Simply run the script, and Ktail will tail the logs of all of your Kubernetes pods:

```bash
$ ./ktail.rb
[my-pod-1] hi
[my-pod-2] hello
[my-pod-1] hi
[my-pod-2] hello
[my-pod-1] hi
[my-pod-2] hello
```

Ktail requires that you have `kubectl` in your $PATH.

License
-------

Ktail is released under the MIT License. Please see the MIT-LICENSE file for details.
