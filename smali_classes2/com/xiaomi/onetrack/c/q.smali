.class Lcom/xiaomi/onetrack/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/c/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/p;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/c/p;->a()V

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/c/q;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v2, v0, v2

    const/4 v2, 0x2

    aput v2, v0, v2

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    invoke-static {v3}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/c/p;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/xiaomi/onetrack/c/q;->b:Lcom/xiaomi/onetrack/c/p;

    int-to-long v6, v4

    invoke-virtual {v5, v3, v6, v7}, Lcom/xiaomi/onetrack/c/p;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netReceiver error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UploadTimer"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
