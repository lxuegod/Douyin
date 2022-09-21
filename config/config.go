package config

import (
	"fmt"

	"github.com/spf13/viper"
)

type Config struct {
	Server ServerConfig
	Mysql  MysqlConfig
}

type MysqlConfig struct {
	Host     string
	Port     string
	Username string
	Password string
	Database string
}

type ServerConfig struct {
	Host string
	Port string
	Mode string
}

var Conf Config

func init() {
	//	读取配置文件
	viper.SetConfigFile("./config/config.yaml")

	//	监控配置文件
	viper.WatchConfig()
	//	加载配置文件
	if err := viper.ReadInConfig(); err != nil {
		panic(fmt.Errorf("config Read err: %v", err))
	}
	//	反序列化
	err := viper.Unmarshal(&Conf)
	if err != nil {
		panic(fmt.Errorf("config Set err: %v", err))
	}
}
