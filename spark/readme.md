# ./spark-shell 
scala> 

scala> val rdd = sc.parallelize(1 to 100 ,5)
scala> rdd.count

scala> var rdd2=rdd.map(_+4)
scala> rdd2.take(2)
res1: Array[Int] = Array(5, 6)


#统计文件 文字出现的次数

/data/fileS/1.txt

scala> val rddF = sc.textFile("file:///data/fileS/1.txt")
rddF: org.apache.spark.rdd.RDD[String] = file:///data/fileS/1.txt MapPartitionsRDD[4] at textFile at <console>:24



scala> rddF.count
scala> val mappedRdd=rddF.flatMap(_.split(" "))
mappedRdd: org.apache.spark.rdd.RDD[String] = MapPartitionsRDD[5] at flatMap at <console>:26

统计单词个数
scala> val kvRdd = mappedRdd.map(x=>(x,1))
scala> kvRdd.first
res5: (String, Int) = (When,1)
scala> kvRdd.take(3)
res6: Array[(String, Int)] = Array((When,1), (cobwebs,1), (relentlessly,1))
scala> val resultRdd=kvRdd.reduceByKey(_+_)
scala> resultRdd.take(20)
res10: Array[(String, Int)] = Array((poverty,1), (disappointing,1), (For,1), (The,1), (sneers,1), (its,2), (Friends,,1), (spines,1), (dew,1), (cobwebs,1), (brush,1), (judge,1), (through,1), (Take,1), (youth,1), (Whether,1), (arms,1), (sympathy,1), (warm,1), (conquer,1))

保存文件
resultRdd.saveAsTextFile("file:///data/fileS/output/")




192.168.211.130:8088
