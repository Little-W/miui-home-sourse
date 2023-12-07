.class public abstract Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/sosc/ISoScSplitScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreen;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreen"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 1

    invoke-static {}, Lcom/android/hideapi/RemoteTransitionExpose;->getCreator()Landroid/os/Parcelable$Creator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v8, 0x1

    const-string v5, "com.android.wm.shell.sosc.ISoScSplitScreen"

    if-eq p1, v4, :cond_30

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2f

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2e

    const/4 v4, 0x6

    if-eq p1, v4, :cond_2d

    const v4, 0x5f4e5446

    if-eq p1, v4, :cond_2c

    const/4 v4, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_1

    :cond_1
    move-object v3, v6

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    move-object v4, v6

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/hideapi/RemoteTransitionExpose;->getCreator()Landroid/os/Parcelable$Creator;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/window/RemoteTransition;

    :cond_3
    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V

    return v8

    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v8, :cond_4

    move v4, v8

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->updateDividerFixedState(Z)V

    return v8

    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->onGestureEnd(I)V

    return v8

    :pswitch_3
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->onGestureStart(I)V

    return v8

    :pswitch_4
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->getSoScSplitInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v8

    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->setSplitRatio(F)V

    return v8

    :pswitch_6
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->snapSplitToNextRatio(I)V

    return v8

    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->removeTaskFromSplit(I)V

    return v8

    :pswitch_8
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_4

    :cond_6
    move-object v1, v6

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_5

    :cond_7
    move-object v3, v6

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_6

    :cond_8
    move-object v4, v6

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_7

    :cond_9
    move-object v5, v6

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {p2}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_8

    :cond_a
    move-object v10, v6

    :goto_8
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startIntents(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLandroid/os/Parcelable;)V

    return v8

    :pswitch_9
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_9

    :cond_b
    move-object v1, v6

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_a

    :cond_c
    move-object v3, v6

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_b

    :cond_d
    move-object v4, v6

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_c

    :cond_e
    move-object v5, v6

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    sget-object v6, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    move-object v10, v2

    goto :goto_d

    :cond_f
    move-object v10, v6

    :goto_d
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return v8

    :pswitch_a
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    goto :goto_e

    :cond_10
    move-object v1, v6

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_f

    :cond_11
    move-object v3, v6

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_10

    :cond_12
    move-object v5, v6

    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {p2}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_11

    :cond_13
    move-object v10, v6

    :goto_11
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V

    return v8

    :pswitch_b
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_12

    :cond_14
    move-object v1, v6

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_13

    :cond_15
    move-object v3, v6

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_14

    :cond_16
    move-object v5, v6

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {p2}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_15

    :cond_17
    move-object v10, v6

    :goto_15
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startIntentAndTask(Landroid/app/PendingIntent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V

    return v8

    :pswitch_c
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    goto :goto_16

    :cond_18
    move-object v1, v6

    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_17

    :cond_19
    move-object v3, v6

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_18

    :cond_1a
    move-object v5, v6

    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b

    sget-object v6, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    move-object v10, v2

    goto :goto_19

    :cond_1b
    move-object v10, v6

    :goto_19
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return v8

    :pswitch_d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v8

    :pswitch_e
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v8

    :pswitch_f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_1a

    :cond_1c
    move-object v1, v6

    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_1b

    :cond_1d
    move-object v3, v6

    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1c

    :cond_1e
    move-object v5, v6

    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    sget-object v6, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    move-object v10, v2

    goto :goto_1d

    :cond_1f
    move-object v10, v6

    :goto_1d
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return v8

    :pswitch_10
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_1e

    :cond_20
    move-object v3, v6

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1f

    :cond_21
    move-object v5, v6

    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    sget-object v6, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    move-object v10, v2

    goto :goto_20

    :cond_22
    move-object v10, v6

    :goto_20
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return v8

    :pswitch_11
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_21

    :cond_23
    move-object v3, v6

    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_22

    :cond_24
    move-object v5, v6

    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25

    invoke-static {p2}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_23

    :cond_25
    move-object v10, v6

    :goto_23
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;)V

    return v8

    :pswitch_12
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_24

    :cond_26
    move-object v1, v6

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_25

    :cond_27
    move-object v3, v6

    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/Bundle;

    :cond_28
    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return v8

    :pswitch_13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_26

    :cond_29
    move-object v5, v6

    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2a

    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    move-object v6, v2

    :cond_2a
    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    return v8

    :pswitch_14
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/Bundle;

    :cond_2b
    invoke-virtual {p0, v1, v3, v6}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->startTask(IILandroid/os/Bundle;)V

    return v8

    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :cond_2d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->exitSplitScreen(I)V

    return v8

    :cond_2e
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->removeTaskFromStage(II)V

    return v8

    :cond_2f
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    return v8

    :cond_30
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
