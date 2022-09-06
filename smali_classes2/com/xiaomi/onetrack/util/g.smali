.class Lcom/xiaomi/onetrack/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    iput-object p2, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/util/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/util/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/open/device/writeBack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/open/device/writeBack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "instanceId"

    .line 139
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    .line 140
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oaid"

    .line 141
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    invoke-static {v4}, Lcom/xiaomi/onetrack/util/d;->a(Lcom/xiaomi/onetrack/util/d;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "projectId"

    .line 142
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user"

    .line 143
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 144
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/d;->c(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 147
    iput v1, v0, Landroid/os/Message;->what:I

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hint"

    const-string v3, "\u6ce8\u518c\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u7f51\u7edc\u73af\u5883\u662f\u5426\u5728\u5185\u7f51"

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/d;->b(Lcom/xiaomi/onetrack/util/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    invoke-static {}, Lcom/xiaomi/onetrack/util/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
