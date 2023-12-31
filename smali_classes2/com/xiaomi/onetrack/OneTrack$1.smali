.class final Lcom/xiaomi/onetrack/OneTrack$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/OneTrack$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/OneTrack$1;->a:Z

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->a(Z)V

    .line 133
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/OneTrack$1;->a:Z

    invoke-static {p0}, Lcom/xiaomi/onetrack/c/i;->b(Z)V

    return-void
.end method
