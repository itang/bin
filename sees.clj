#!/bin/bash lein-exec

(require '[clojure.java.browse :as browse])

(def sees ["https://twitter.com/"
            "http://www.reddit.com/r/rust"
            "https://github.com/stars?direction=desc&sort=updated"
            "http://www.douban.com"
            "http://www.weibo.com"
            "http://bbs.szhome.com/30017.html"])

(doseq [see sees]
  (browse/browse-url see))
