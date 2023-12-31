.class Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;
.super Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;
.source "LauncherOverlayCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final WHAT_OVERLAY_SCROLL_END:I = 0x3

.field private static final WHAT_OVERLAY_SCROLL_START:I = 0x1

.field private static final WHAT_OVERLAY_SCROLL_UPDATE:I = 0x2

.field private static final WHAT_OVERLAY_STATUS:I = 0x4


# instance fields
.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback$Stub;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mUIHandler:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setServiceState(I)V

    return v1

    .line 79
    :cond_2
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayScrollEnd(F)V

    return v1

    .line 76
    :cond_3
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayScrollChanged(F)V

    return v1

    .line 73
    :cond_4
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayScrollStart(F)V

    return v1
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public overlayScrollChanged(F)V
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public overlayScrollEnd(F)V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public overlayScrollStart(F)V
    .locals 1

    .line 37
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public overlayStatusChanged(I)V
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/miui/launcher/overlay/client/LauncherOverlayCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method
