.class Lcom/xiaomi/onetrack/api/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/g;->c:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/g;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/g;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/g;->c:Lcom/xiaomi/onetrack/api/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/g;->a:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/g;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
