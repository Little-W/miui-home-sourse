.class final Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;
.super Ljava/lang/Object;
.source "OperationIconEventTracker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->onAppDeepLinkClick(Lcom/miui/home/launcher/operationicon/OperationIconInfo;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconEventTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconEventTracker.kt\ncom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1\n*L\n1#1,130:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $iconInfo:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

.field final synthetic $isFirstOpen:Z

.field final synthetic $isOpenDp:Z

.field final synthetic this$0:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Lcom/miui/home/launcher/operationicon/OperationIconInfo;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    iput-object p2, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$iconInfo:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    iput-boolean p3, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$isOpenDp:Z

    iput-boolean p4, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$isFirstOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppDeepLinkClick pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$iconInfo:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isOpenDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$isOpenDp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",dp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$iconInfo:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getDelayDeepLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",dpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$iconInfo:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getDelayDeepLinkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperationIconEventTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->this$0:Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;

    iget-boolean v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$isOpenDp:Z

    iget-boolean v2, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$isFirstOpen:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker$onAppDeepLinkClick$1;->$iconInfo:Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    check-cast v3, Ljava/util/List;

    const-string p0, "click"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->access$buildEventList(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Ljava/lang/String;ZZLjava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;->access$sendMarketService(Lcom/miui/home/launcher/operationicon/OperationIconEventTracker;Ljava/lang/String;)V

    return-void
.end method
