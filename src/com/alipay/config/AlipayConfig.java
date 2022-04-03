package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000117691328";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCGLP9miqm3NHNFozF/x5nRTW5vvBmwtbjtRhGBWoRksFMAuPIgijJIhEryx0sBiALIw4+1E9bw9vpDUnNjNkRznybPjSp/k/kl8mcP2KIpHEj803RBdrUBdtrkkM8vCokvO+bsuhaGQJtvQPuIOy1cOpf1IDI0Trlyqb/3yzPIlboPwlBOODkcHR8RXkWPywsnNFIvSEGzYGx0qqyus1lTRkoE+fT1ygYxLkaM7vxkiMpQyntGsJ/rxnpxpg3yTy/HuKAZyZNpksiGinpAhfkZRXlBUGNFPXe2B9UQf5N95sBMjPBLJtn1CwLVm0pNHQ5JPX7+FM4K7xeQPtEvn1pJAgMBAAECggEAIHPDth51m/0QoFgvQbOaLXhn7Jh3MjlRp/nZhArLmLrY6ITS8zHZpZZxtjSjnJQz8DD0khxhUVi7AQtxIx7eAYUN0wdWrxKwIRB3AusnlX/k21mddbPrZZZErSGlKsCGm6kGWl1L017O+WKjM7j0aKk3Va9a1THxQp1x89HvDWVnESltRWGzEXNx7kqG9jgWv9IFisS6qnCRGt2BIXqbPV/8k70aYNKkJtykPIZZAAW4uSyJd8Y0F9XyWkkBFLuL3CD5eRJglyNvAfz4zrvIOCBWHOoxOv89jVHePDL/WSexdwiE2iw4wGTiunC34ev3XZfRP737iluvghQGjOMRAQKBgQDRTEDsCfuhg4yND3ygpH6vNIes4LSwxTUJXkKG4YZzbW2UXST3PC5VUHvVln72qpEd1BI4tyQw+Q3RqtHj4X4PcJG9GUEacqjD+B1oP+/iPnDH3etRo9F6BX/jtZer6xuBCxvRkfeP8kHhSqlTaxSBTG925uUw6WIbf6x4vy674QKBgQCkHYkzk4DaR03EIFVsH00/eevqyhL8XC6oI8Dco/KZgbn+B6xzo+r5QXUZtyrCzzGPmIbMD2qmHgUYmSpzMu68kYnMV6J2xp/BglyuU6eIUBcEzQ/bZPq8SZ0nzAkiHbwzeGLDn7sB59IDA2M88v5nVPeGR+Aueqo8M6hptJWraQKBgQDQNXdwWQ4GQwOTYJCujnWofi1qga+/GrAEPc0YuUozkeys52xat3ewT3yhojFz2YK7lbj6ytYqEdj5d2GNvUjWuzmAUJs/YEkbirxWdSSCgXNYoR/z+2/sX4Q2VvQnhp+54/8soHUSsgFvygJghenEJvHL6y6dVc7PZFeDV016gQKBgQCJwvVZ4xbFpBcmbFHoefoZL5oWs9vuFN9haunJDKJns1rSX9SmGdHzu7u1g2kUsGIU/N8iSkqm+QokFOZqXzXB+pVmf6Wz+JVAFdMAzt4R8dDwycXmz8Qd69lM/9wm1DkYJ5UYS2vqdJN4zg4uqnddfBhvksQfn/5onKBhYyJECQKBgDhd2PJEbQ0xuT9+t3opzn0Cn1m7lD3PPXrkY7Vah+nc4oBu/k0iEdk+md6A+j8v2D5yPT4nMa/IKb0yifA18nXQUJn4Y0R8Zu/D5GpiJKjfeARUvxd/n3pKxqF1y9cmqGa0f0ABM6sreT1G2NIztIf8LrGTuGjhJztcG6pCs24E";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5hg0Z+Wa5NpJXJyrodmV2LQcA6eQu8aAzgeK+TtzRUV17J+I9J7CsSQhuTOXB0Gtut/h/V+jHBZgq6JYGpuvq3iygATZ66NvuGTWP36+736TbLBzrOYy7eiyiIgSYIRIS0oa4grP866iRnypo5vtZIJpYqbzQ6Y5Vw8toI9YZnl/gKKlPXARZvhJxS9z7XP0TyUJ+LrlubKsXwgEeZiF/JB+6QJY3aSZxLC6kIefvNUvW18zNyReeZu40k34LJU1Ao4IgHbimZrXzaurrBv0eh9IMyz43iBuACQw9FqHFcDzZlENQnP5FycosIngb+mZk5c1ZY1bGRcnSxp1rj1GjQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://工程公网访问地址/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String return_url = "http://localhost:9527/aomaotuan2/Cart-success.jsp";
	public static String return_url = "http://119.3.253.88:8080/aomaotuan3/UpdateOrderStatusController.do";
	
	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

