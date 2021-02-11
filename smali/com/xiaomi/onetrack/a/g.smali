.class Lcom/xiaomi/onetrack/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)V

    .line 105
    invoke-static {}, Lcom/xiaomi/onetrack/h/b;->a()Lcom/xiaomi/onetrack/h/b;

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/g;->c(Z)V

    return-void
.end method
