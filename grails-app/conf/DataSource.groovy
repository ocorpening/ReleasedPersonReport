//dataSource {
//    pooled = true
//    driverClassName = "org.hsqldb.jdbcDriver"
//    username = "sa"
//    password = ""
//}
hibernate {
    cache.use_second_level_cache = false
    cache.use_query_cache = false
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            //dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            //url = "jdbc:hsqldb:mem:devDB"
			pooling = true
            dbCreate = "update"
            //url = "jdbc:mysql://localhost/releasedPerps"
            url = "jdbc:mysql://localhost/owenjc_jims"
			driverClassName = "com.mysql.jdbc.Driver"
			username = "root"
			//password = "14the\$"
			password = "7704L@tta"
			loggingSql = false
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
			pooling = true
            dbCreate = "update"
            url = "jdbc:mysql://localhost/owenjc_arrestdata"
			driverClassName = "com.mysql.jdbc.Driver"
			username = "owenjc_admin"
			password = "L@tta7704"
			loggingSql = true
        }
    }
}
