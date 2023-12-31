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

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 289
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 293
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    :goto_0
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 300
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 301
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 303
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 305
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 312
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p0
.end method

.method public closeOverlay(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 409
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 410
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw p0
.end method

.method public endScroll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 352
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 354
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 355
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.miui.launcher.overlay.ILauncherOverlay"

    return-object p0
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 552
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    :goto_0
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 559
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 560
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/miui/launcher/overlay/ILauncherOverlay;->invoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    throw p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 525
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 526
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    .line 528
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 532
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    :goto_1
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 535
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 536
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 542
    throw p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 454
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    :goto_0
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 463
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 464
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    throw p0
.end method

.method public onScroll(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 336
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 339
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 340
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    throw p0
.end method

.method public openOverlay(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 422
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 425
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 426
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw p0
.end method

.method public setActivityState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 438
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 441
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 442
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw p0
.end method

.method public setAlpha(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 492
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 494
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 495
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 496
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    throw p0
.end method

.method public setAlphaAndScale(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 508
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 511
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 512
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 513
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setAlphaAndScale(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw p0
.end method

.method public setScale(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 476
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 478
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 479
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 480
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->setScale(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw p0
.end method

.method public startScroll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 323
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 324
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/launcher/overlay/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    throw p0
.end method

.method public windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 367
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 375
    invoke-interface {p2}, Lcom/miui/launcher/overlay/ILauncherOverlayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 376
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 377
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 378
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/miui/launcher/overlay/ILauncherOverlay;->windowAttached(Landroid/os/Bundle;Lcom/miui/launcher/overlay/ILauncherOverlayCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw p0
.end method

.method public windowDetached(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.launcher.overlay.ILauncherOverlay"

    .line 390
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 391
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget-object p0, p0, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 393
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 394
    invoke-static {}, Lcom/miui/launcher/overlay/ILauncherOverlay$Stub;->getDefaultImpl()Lcom/miui/launcher/overlay/ILauncherOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/launcher/overlay/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw p0
.end method
