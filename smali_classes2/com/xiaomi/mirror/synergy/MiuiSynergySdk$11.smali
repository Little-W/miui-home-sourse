.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;
.super Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->setShareCallback(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mirror/synergy/MirrorShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

.field public final synthetic val$callback:Lcom/xiaomi/mirror/synergy/MirrorShareCallback;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MirrorShareCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;->val$callback:Lcom/xiaomi/mirror/synergy/MirrorShareCallback;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorShareCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$11;->val$callback:Lcom/xiaomi/mirror/synergy/MirrorShareCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/xiaomi/mirror/synergy/MirrorShareCallback;->onStateChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiuiSynergy"

    const-string p1, "onStateChanged callback == null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
