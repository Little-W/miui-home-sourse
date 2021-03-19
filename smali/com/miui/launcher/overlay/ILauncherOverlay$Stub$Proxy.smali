.class Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILauncherOverlay.java"

# interfaces
.implements Lcom/miui/launcher/overlay/ILauncherOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/launcher/overlay/ILauncherOverlay;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 269
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    :goto_0
    iget-object v4, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 281
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 283
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 292
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw p1
.end method

.method public closeOverlay(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 386
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw p1
.end method

.method public endScroll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 332
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.miui.launcher.overlay.ILauncherOverlay"

    return-object v0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 505
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 506
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    .line 508
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    :goto_1
    iget-object v2, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 515
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 516
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 522
    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 434
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 444
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    throw p1
.end method

.method public onScroll(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 316
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 318
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    throw p1
.end method

.method public openOverlay(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 402
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw p1
.end method

.method public setActivityState(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 418
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    throw p1
.end method

.method public setAlpha(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 472
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 474
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    throw p1
.end method

.method public setAlphaAndScale(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 488
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlphaAndScale(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw p1
.end method

.method public setScale(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 456
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 458
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setScale(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw p1
.end method

.method public startScroll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 301
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v1
.end method

.method public windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 355
    invoke-interface {p2}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 356
    iget-object v3, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 357
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 358
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw p1
.end method

.method public windowDetached(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 370
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 371
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v2, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    throw p1
.end method
