.class Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "OverlayLauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onServiceDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/OverlayLauncherClient;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/OverlayLauncherClient;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/OverlayLauncherClient;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 4

    .line 49
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    .line 50
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float p0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 51
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/OverlayLauncherClient;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
