# Serve HTTP requests directly from Storyscript!
#
# Learn more at https://hub.storyscript.io/service/http

http server as client
    when client listen method: "post" path: "/add" as request
        result = joaoh82/add_sum_ms add x:request.body["x"] y:request.body["y"]
        request write content:results

