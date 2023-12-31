.class Lcom/xiaomi/onetrack/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/onetrack/c/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/l;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/c/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/c/m;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/m;->d:Lcom/xiaomi/onetrack/c/l;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/onetrack/c/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/xiaomi/onetrack/c/l;->a(Lcom/xiaomi/onetrack/c/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
