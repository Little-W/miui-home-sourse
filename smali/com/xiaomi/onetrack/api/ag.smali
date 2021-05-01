.class Lcom/xiaomi/onetrack/api/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/af;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/af;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ag;->a:Lcom/xiaomi/onetrack/api/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Lcom/xiaomi/onetrack/b/n;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/onetrack/b/n;->a(IZ)V

    .line 78
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Lcom/xiaomi/onetrack/b/n;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/onetrack/b/n;->a(IZ)V

    return-void
.end method
