.class public Lcom/xiaomi/onetrack/d/a;
.super Lcom/xiaomi/onetrack/e/b;


# static fields
.field private static final d:Ljava/lang/String; = "CustomEvent"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/xiaomi/onetrack/e/b;-><init>()V

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/d/a;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/d/a;->b(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/d/a;->b(J)V

    .line 24
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/d/a;->a(Lorg/json/JSONObject;)V

    .line 25
    invoke-static {}, Lcom/xiaomi/onetrack/a/f;->a()Lcom/xiaomi/onetrack/a/f;

    move-result-object p2

    const-string p4, "level"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CustomEvent"

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CustomEvent error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
