.class final Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncIconEnableState$1;
.super Ljava/lang/Object;
.source "OperationIconCache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/OperationIconInfo;->syncIconEnableState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/operationicon/OperationIconInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncIconEnableState$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 277
    sget-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$Companion;->getInstance()Lcom/miui/home/launcher/operationicon/OperationIconCache;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconInfo$syncIconEnableState$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache;->update(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V

    return-void
.end method
