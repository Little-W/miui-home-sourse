.class Lcom/miui/home/launcher/Launcher$FsCallback;
.super Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FsCallback"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 9208
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;-><init>()V

    .line 9209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public changeAlphaScale(FFIIIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9218
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 9220
    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/Launcher;->changeAlphaScale(FFIIIIZ)V

    :cond_0
    return-void
.end method

.method public getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9226
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 9228
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getFsGestureCallbackSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9251
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 9253
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyHomeModeFsGestureStart()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9243
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 9245
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureCallbackMiuiAnimationEnd()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9235
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 9237
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureCallbackMiuiAnimationStart()V

    :cond_0
    return-void
.end method
