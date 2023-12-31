.class Lcom/xiaomi/dist/utils/ServiceExecutor$1;
.super Ljava/lang/Object;
.source "ServiceExecutor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/dist/utils/ServiceExecutor;->binderService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/dist/utils/ServiceExecutor;


# direct methods
.method constructor <init>(Lcom/xiaomi/dist/utils/ServiceExecutor;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$1;->this$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$1;->this$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    invoke-static {p1}, Lcom/xiaomi/dist/utils/ServiceExecutor;->access$200(Lcom/xiaomi/dist/utils/ServiceExecutor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Lcom/xiaomi/dist/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$1;->this$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    invoke-static {p0, p2}, Lcom/xiaomi/dist/utils/ServiceExecutor;->access$300(Lcom/xiaomi/dist/utils/ServiceExecutor;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$1;->this$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    invoke-static {p1}, Lcom/xiaomi/dist/utils/ServiceExecutor;->access$200(Lcom/xiaomi/dist/utils/ServiceExecutor;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/xiaomi/dist/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/xiaomi/dist/utils/ServiceExecutor$1;->this$0:Lcom/xiaomi/dist/utils/ServiceExecutor;

    invoke-static {p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->access$400(Lcom/xiaomi/dist/utils/ServiceExecutor;)V

    return-void
.end method
