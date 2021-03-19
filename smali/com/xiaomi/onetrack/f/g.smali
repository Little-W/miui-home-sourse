.class Lcom/xiaomi/onetrack/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/onetrack/f/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/f/f;Landroid/content/Context;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/f/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/f/f;->b(Landroid/content/Context;)V

    .line 40
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/f/g;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/f/f;->a(Lcom/xiaomi/onetrack/f/f;Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/b;->a(Landroid/content/Context;)V

    return-void
.end method
