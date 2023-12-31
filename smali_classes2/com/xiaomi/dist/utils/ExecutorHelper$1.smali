.class Lcom/xiaomi/dist/utils/ExecutorHelper$1;
.super Ljava/lang/Object;
.source "ExecutorHelper.java"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/dist/utils/ExecutorHelper;->post(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;


# direct methods
.method constructor <init>(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$1;->val$task:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeout()J
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$1;->val$task:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;

    invoke-interface {p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$Task;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$1;->val$task:Lcom/xiaomi/dist/utils/ExecutorHelper$Task;

    invoke-interface {p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$Task;->run()V

    return-void
.end method
