import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: Center(child: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAhFBMVEX////ALU29FD+8Cjv36eu+HkPenajovMT35uq+I0fSd4jsyc+/KErHTGW8DTy9GEHqwsnakp/v0tfEOFfjr7jYi5n57/G7ADb++vvEP1vBMFDOaXz89fbdm6f03uLx19zIUGjKWW/hqLLMYXXUfY3WhJPTeInQb4HGRmDmtb7NZnnZj53tynxIAAAKXklEQVR4nO2daWOqOhCGI4iaIwWXCm7V1i5q+///33WrzIQEAmYhvbwfK0d5DuFlZpIMhLRq1apVq1b/B60nw67tc9Cp7iqKvPR1aPs8tGmU0s5Jof/+R6/jxu/cRKMX2yejRYewc1e8/IND9eh1gEJ/ldg+I8Va0w4W9Xa2z0mtPoIOq3gxsX1WCrVJc4Dnofq1tn1iyvQacghPQzV+tn1minSMuIAneU9b2yenQvNYBHgaqunHHxiqn3mbAQoCZqh2R/2GaVhyEbJoRqDoCXzD9s334oYpij/nRYQCmwGii/vBt+i1aQoWBZeRsRmPRxDPbgcPyq63LdF3IeCcoksYbFc+55rGt/+ifSOv4FmpMD6ZIZs5x2rDZd55omsovi70JKuinwJAbDPh4fLHccReqrh/+aDb1EF6OvU3AeEbGpLx5vrX7huDcruGTSZ84gNimwkX9/R+hG/G233oHuG8g0HCaHz7JEFxTvBBHCWc5ZwjuKX3b+hO/LVS5wgHnKTpmt730ei9Z8POEb5xn2402uGU/+awLCH1rKuMsC9KmgIcBfgTHiH9GNrWZFpCGJYGpFeUf4RHGPS4t7ZRTTMCHuGPZIDiZUGtW4SyQTQsurlFyLeZnDKbIY4RjrDNCEdsCgs1ThHiaCbsxfxLCmyGuEU4Rhct3pFkz8sLOwHKnR0iHOCIe3r+23Car7kxtX2HCN/RmPx9pPfYEka4wP/MHcIRelLQ/e/fu98Y0WdKA+4QLtEtF2UzaQkavdhmiEOEL+iGi8Gp4tHrsZOIrhB2UdIE7zU8evNTiK4Q4pvNBzPa6CHJ2gxxhnAosBn2IcnaDHGGENsMuNcGxTZDXCGUtZmIs1bBCcIuJ5q5asSvzUA5QSi2mWWJzRA3CBmbWWVHY5vhT3S4QDjFNpMtYcOjFzoskARhMhxp04SdB+UQytpMzF8SVUo4+I40Fg+jYIZ/Lk/YxWu7ltmxePTGghFYRjjJTVopVjBF+WqecCVpM1PCVwlh4snVJx8QRZNoOUKxzeDR64uWJpYQFi/qUCN0bjlCbDM+sBkUiwtsppxwqf0SnkvtBYQ9bDNgnex3cdIkSbjmrY5TLZRDMIQJntCubDPlhCZmpsJXMeH+QZspJTQzSuGKBEw4wTYD1p9gm0kLVkCXEMrOhDwilNNhQmwzUcVoRopwrf9pEaCVQZDw7RlPzI+zw5hYvGiBd9kTf8tdUaVQ8QEFbvCqLZbwwFo2I0FIkn2kMWzz6Rj/3FQ4ZvyR4Kgim5EhPDFO9EXem4LIG6uezcgRGpWQMBrcj8GxOAzkeHKFENrMSjKaucoRwjDMDqliM8QZQrHNLMXfdZUbhGKbESZNd7lBmGY2g2Nx+l36jU4Qim2GVwJm5AJh2MmemozNSOyrlCCcbyfatJEhrBvNSBIm/2J9UVsUhcxvcghhIadX0WYkCLdUb/4Ueq/CyPuXA9gMjmbKbaaccE31Z08o6soTBj/Zp0zKL7WBu8EZ8FVhmF3jSWWbKSe0WcW4KuoLPpSymVJCq5Woi6DN7KrbTDmhzWriRZHQZsTboqoQWq0IX04JTNxgm/Fk+0Q0uKp/Fs0+maDxJGkz5YSJ/huRvsIfZOqHwGYW1ZImWUIy1L3/MljC4HmNzATu7dqhuxAGcg8SkoHWPbRe/IFCmi/0/wmSpnXVpEme8MSocR80s6N5izgC8KD8VyOakSY0KHyvCaOZoEozmkYRPqN7LTpmn2D0TpUvbRIhszdLhc2QZhHih6+fZcd466R0NHNVgwhxOxY1NkMaRfgqaTPjgu/gqDmEeAMztJlDzWjmqsYQzrHNvGafPGIzRI4w6WpT9sCfiWwG90Sgok36DxD2lqmvTeni1khG1mZAvqiIsLuMtaaIYfR0sRSmT0JmM1uM/pM/xQcJl9obg1xWKvQlbSbMn+GDhC8F7ZhU6ewdqGgpthmYLyoiFC8cUCe6YoqWKbAZvG6mss2UEhqpRHVCvDcL2swHjmYq20wpYWKEcIprTDR7hDD5YnWbKSUkZvrz4NqMSpspJ1xpt1JWsHqK80W/hs2UE26NDFPEoS6akSIkPd2IzCAJQHkYt++sZTMShOQYeIFG+fsFBhbazIxzckoIybw/1qfdYIRiCg/0O3zCtZnCHnwPEWoW3gIKGlo8PxzNXGWbkNkCmjW0wDaDZuCqyTIhbuIEbUZYlnrkJywQMjvNs3uNyRfr2gyxTYjX/0Cbwe07aV2bIbYJlyKbYcpStW2GWCbE63/AFtC5cJKtumwSMhPzYKe5MpshcoSDjRYN9qItoBs10Ywk4fwn9CM9wj4Kdpo/KbMZCcIBDQwUMhibEU6yaSCcS/a4e1hg6Ze4+q2D0MS6trN02Uw5oYkVQ2d5QpsRNRNWRGimEoVtRjjJpoXQTDURNbQQT7JpISRmBqnYZgTNkhUSfpiotUGbEU6y6SLkde1VLj+rzYgn2XQRkmOqfaBCm8GTbMHDNiNBSCZTP1ZcX2P6cQObYdo5P24zMoSEbJ97SrXD2S3sm4NrM9yWQToIVSvB8zBgpzm2GRVGSqwQfouSJqZLsLOEuCcJshn6NwhHqCu50GYcJnyBNxuMZph3HrhLCEukYptxmRAmZIGoAaLLhHB/A/3K/p5vRm6OcD1R+W6AHhiM4N1h/fzGDlOE6y+1nT/g3RZlU02szZgj3MYaKzXRPang1YPMEK51rtvLHobcN6WYIcy/tkah7lsrt9yapRlCrbW23/dp9rnd8c0Q6q1E3YxmLNgf9wcIryn8yhN8bGaU6hykl3p9chDe6WYIPzXW2ujs3NBA/ANmCLsah2l8PCVMBYPE0BN/xPc5FYq649z/H6roG4raNk++ui2jeLHhPreInB7AKjdzkfeg/6xKLxiRBYzf4UZDJ7OnfuHSf/+z9J1dNWSWcFZgzWF6LgC7TljwouKQXiIc1wlF4cvptxfXgobjhFvxG99/N9g7TvgsMpr0vpPCcUJBDBiCuWzHCQ9co6EBeNWdHcKkqgQTm/w3ZAcH2PrDBuFuEVetp9F3bocjrtF4uMGqecJkUacbNE15M/A7zjVMxX2EDREuaiaIEWef2Ve+rJ1bL2OcsFd7D2ma38ST265J6bbgGDOEi9rZYb71Qa7ogz3GDuG8fpuofBsg1mg8XhNn04QPrNzLLz+fYEKf29/C+CitX/LOvwIN1XzClL/DwDjhvnatzcsTgJCGhjmPsURYew8prwXJ8P5lPI+xREhe6iGGEW9V4e62SC4Sv4/CQtR2jL2AVlQQHfhbWkdhFMcR5b3izh4hmR9nVTUWN96cPB+573/7lePZk4RawupqCU2rJayultC0WsLqaglNqyWsrpbQtFrC6moJTaslrK6W0LRawupqCU2rJawuSBi+fv2zrC/wCmANhJ2wanFbvTp6CZullrAlbAntSxFhIlzyaV2PtdrLxNm82RDVa9+dl9Ydhg8pVdB+56y1mY5z1RV/lJ+8nDaa3xZbT6Ff8tr7KlrP9L2DpK7ShZLuO5kGTVP567ZbtWrVqlWrVq3+P/oP2To1Cy/WsmEAAAAASUVORK5CYII=')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}
