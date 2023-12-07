.class final Lcom/xiaomi/onetrack/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/api/c;->a()Lcom/xiaomi/onetrack/api/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->e()V

    iget-object v0, p0, Lcom/xiaomi/onetrack/c/j;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/onetrack/c/j;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
