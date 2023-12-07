.class Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreenT;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/wm/shell/splitscreen/ISplitScreenT;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public exitSplitScreen(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->exitSplitScreen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->exitSplitScreenOnHide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    check-cast v1, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public removeFromSideStage(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->removeFromSideStage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v10, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v10, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v4, p3

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_2

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v10, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    move/from16 v7, p6

    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p7

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v9, :cond_4

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v10, v2}, Landroid/view/RemoteAnimationAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    move-object v2, p0

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v11, 0xd

    const/4 v12, 0x0

    check-cast v12, Landroid/os/Parcel;

    invoke-interface {v2, v11, v10, v12, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_5
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p5, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p5, v0, v2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startTask(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move v4, p3

    invoke-virtual {v9, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v6, p5

    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p6

    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v8, :cond_2

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v8, v9, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-object v3, p0

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v10, 0xb

    const/4 v11, 0x0

    check-cast v11, Landroid/os/Parcel;

    invoke-interface {v3, v10, v9, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move v4, p3

    invoke-virtual {v9, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v6, p5

    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p6

    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v8, :cond_2

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v9, v3}, Landroid/view/RemoteAnimationAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-object v3, p0

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v10, 0xc

    const/4 v11, 0x0

    check-cast v11, Landroid/os/Parcel;

    invoke-interface {v3, v10, v9, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    check-cast v1, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
