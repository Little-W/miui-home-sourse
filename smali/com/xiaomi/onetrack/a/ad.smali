.class Lcom/xiaomi/onetrack/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/ac;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/ac;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ad;->a:Lcom/xiaomi/onetrack/a/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/onetrack/c/l;->a(IZ)V

    .line 66
    invoke-static {}, Lcom/xiaomi/onetrack/c/l;->a()Lcom/xiaomi/onetrack/c/l;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/xiaomi/onetrack/c/l;->a(IZ)V

    return-void
.end method
