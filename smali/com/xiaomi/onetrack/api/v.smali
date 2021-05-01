.class Lcom/xiaomi/onetrack/api/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/v;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/v;->a:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/g;->a(Lcom/xiaomi/onetrack/api/d;)V

    return-void
.end method
