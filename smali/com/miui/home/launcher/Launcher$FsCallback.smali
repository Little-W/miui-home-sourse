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

    .line 8727
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;-><init>()V

    .line 8728
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public changeAlphaScale(FFIIIIZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 8737
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/Launcher;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 8739
    invoke-virtual/range {v2 .. v9}, Lcom/miui/home/launcher/Launcher;->changeAlphaScale(FFIIIIZ)V

    :cond_0
    return-void
.end method

.method public getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8745
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8747
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getFsGestureCallbackSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8770
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8772
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyHomeModeFsGestureStart()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8762
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8764
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureCallbackMiuiAnimationEnd()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8754
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$FsCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8756
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureCallbackMiuiAnimationStart()V

    :cond_0
    return-void
.end method
