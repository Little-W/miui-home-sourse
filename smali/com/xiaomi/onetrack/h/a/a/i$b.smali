.class public Lcom/xiaomi/onetrack/h/a/a/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/h/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/h/a/a/i;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/h/a/a/i;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/i$b;->a:Lcom/xiaomi/onetrack/h/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    :try_start_0
    new-instance v0, Lcom/xiaomi/onetrack/h/a/a/i$a;

    iget-object v1, p0, Lcom/xiaomi/onetrack/h/a/a/i$b;->a:Lcom/xiaomi/onetrack/h/a/a/i;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/onetrack/h/a/a/i$a;-><init>(Lcom/xiaomi/onetrack/h/a/a/i;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/xiaomi/onetrack/h/a/a/i$b;->a:Lcom/xiaomi/onetrack/h/a/a/i;

    iget-object p1, p1, Lcom/xiaomi/onetrack/h/a/a/i;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 p2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, p2, p3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "MsaSDKHelper"

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
