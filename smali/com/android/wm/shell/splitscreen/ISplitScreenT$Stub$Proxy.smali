.class Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISplitScreenT.java"

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

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 378
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

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 442
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 445
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->exitSplitScreen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    throw p0
.end method

.method public exitSplitScreenOnHide(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 460
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 461
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 463
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 464
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->exitSplitScreenOnHide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw p0
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 713
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 714
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 715
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 716
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 717
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 718
    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    throw p0
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 737
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 738
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 739
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 740
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 741
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 742
    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw p0
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 389
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 390
    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 391
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    check-cast v1, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 392
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw p0
.end method

.method public removeFromSideStage(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    check-cast v2, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 427
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->removeFromSideStage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw p0
.end method

.method public startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 536
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 538
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 545
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 548
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_2

    .line 553
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 556
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 560
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    .line 564
    :cond_3
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 567
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

    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 657
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    invoke-virtual {p1, v10, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz v3, :cond_1

    .line 666
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    invoke-virtual {p2, v10, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 669
    :cond_1
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v4, p3

    .line 672
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_2

    .line 674
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    invoke-virtual {v5, v10, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 677
    :cond_2
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz v6, :cond_3

    .line 681
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 684
    :cond_3
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    move/from16 v7, p6

    .line 687
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p7

    .line 688
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v9, :cond_4

    .line 690
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    invoke-virtual {v9, v10, v2}, Landroid/view/RemoteAnimationAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 693
    :cond_4
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    move-object v2, p0

    .line 696
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v11, 0xd

    const/4 v12, 0x0

    check-cast v12, Landroid/os/Parcel;

    invoke-interface {v2, v11, v10, v12, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 697
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 698
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

    .line 702
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_5
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v0
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 759
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 761
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 764
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 767
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 770
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p3, :cond_2

    .line 773
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 776
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    throw p0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 503
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 508
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p5, :cond_1

    .line 515
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    invoke-virtual {p5, v0, v2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 518
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 522
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 523
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

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw p0
.end method

.method public startTask(IILandroid/os/Bundle;)V
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
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 481
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Parcel;

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 488
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 492
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startTask(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
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

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 575
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    .line 576
    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    invoke-virtual {p2, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move v4, p3

    .line 584
    invoke-virtual {v9, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_1

    .line 586
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 589
    :cond_1
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v6, p5

    .line 592
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p6

    .line 593
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v8, :cond_2

    .line 595
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-interface {v8, v9, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 598
    :cond_2
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-object v3, p0

    .line 601
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v10, 0xb

    const/4 v11, 0x0

    check-cast v11, Landroid/os/Parcel;

    invoke-interface {v3, v10, v9, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 602
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 603
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

    .line 607
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 608
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

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    :try_start_0
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 616
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    .line 617
    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    invoke-virtual {p2, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move v4, p3

    .line 625
    invoke-virtual {v9, p3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_1

    .line 627
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 630
    :cond_1
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v6, p5

    .line 633
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p6

    .line 634
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz v8, :cond_2

    .line 636
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    invoke-virtual {v8, v9, v3}, Landroid/view/RemoteAnimationAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 639
    :cond_2
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-object v3, p0

    .line 642
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v10, 0xc

    const/4 v11, 0x0

    check-cast v11, Landroid/os/Parcel;

    invoke-interface {v3, v10, v9, v11, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 643
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 644
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

    .line 648
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 649
    throw v0
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
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
    const-string v1, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 407
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 408
    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 409
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    check-cast v1, Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 410
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 411
    invoke-static {}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->getDefaultImpl()Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw p0
.end method
