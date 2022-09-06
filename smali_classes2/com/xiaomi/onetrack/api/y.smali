.class Lcom/xiaomi/onetrack/api/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/y;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/y;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->g(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->a(Lcom/xiaomi/onetrack/api/e;)V

    return-void
.end method
