.class Lcom/xiaomi/onetrack/a/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/ae;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/ae;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/af;->a:Lcom/xiaomi/onetrack/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V

    .line 69
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V

    return-void
.end method
