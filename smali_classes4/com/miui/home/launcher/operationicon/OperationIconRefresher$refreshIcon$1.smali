.class final Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;
.super Ljava/lang/Object;
.source "OperationIconRefresher.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->refreshIcon(Lcom/miui/home/launcher/LauncherModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconRefresher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconRefresher.kt\ncom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1\n*L\n1#1,89:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $launcherModel:Lcom/miui/home/launcher/LauncherModel;

.field final synthetic $refreshIntervalTime:J

.field final synthetic this$0:Lcom/miui/home/launcher/operationicon/OperationIconRefresher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;Lcom/miui/home/launcher/LauncherModel;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconRefresher;

    iput-object p2, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->$launcherModel:Lcom/miui/home/launcher/LauncherModel;

    iput-wide p3, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->$refreshIntervalTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconRefresher;

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->access$getNotifyRefreshIconPkg(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;J)Ljava/util/List;

    move-result-object v2

    .line 30
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 32
    sget-object v3, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;

    invoke-virtual {v3}, Lcom/miui/home/launcher/operationicon/OperationIconProvider$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconProvider;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconProvider;->removeInvalidIconInfo(J)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconRefresher;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->$launcherModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->access$refresh(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;Lcom/miui/home/launcher/LauncherModel;Ljava/util/List;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconRefresher;

    iget-wide v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconRefresher$refreshIcon$1;->$refreshIntervalTime:J

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/operationicon/OperationIconRefresher;->access$setLastRefreshTime$p(Lcom/miui/home/launcher/operationicon/OperationIconRefresher;J)V

    return-void
.end method
