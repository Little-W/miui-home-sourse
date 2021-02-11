.class final Lcom/xiaomi/onetrack/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/lang/String;)V

    return-void
.end method
