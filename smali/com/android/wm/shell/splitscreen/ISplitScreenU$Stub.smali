.class public abstract Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreenU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreenU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenU;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 3

    const-string v0, "com.android.internal.logging.InstanceId"

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CREATOR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0
.end method

.method public static getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 3

    const-string v0, "android.window.RemoteTransition"

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "CREATOR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    const/4 v13, 0x1

    const-string v5, "com.android.wm.shell.splitscreen.ISplitScreen"

    if-eq v1, v4, :cond_35

    const/4 v4, 0x3

    if-eq v1, v4, :cond_34

    const v4, 0x5f4e5446

    if-eq v1, v4, :cond_33

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v4

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object v10, v4

    :goto_5
    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startIntents(Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    return v13

    :pswitch_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_6

    :cond_6
    move-object v1, v4

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    goto :goto_7

    :cond_7
    move-object v5, v4

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_8

    :cond_8
    move-object v6, v4

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    goto :goto_9

    :cond_9
    move-object v7, v4

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    goto :goto_a

    :cond_a
    move-object v9, v4

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    goto :goto_b

    :cond_b
    move-object v10, v4

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v14, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/RemoteAnimationAdapter;

    goto :goto_c

    :cond_c
    move-object v14, v4

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    goto :goto_d

    :cond_d
    move-object v15, v4

    :goto_d
    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v14

    move-object v12, v15

    invoke-virtual/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Landroid/os/Parcelable;)V

    return v13

    :pswitch_2
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    goto :goto_e

    :cond_e
    move-object v1, v4

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_f

    :cond_f
    move-object v3, v4

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_10

    :cond_10
    move-object v6, v4

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v9

    goto :goto_11

    :cond_11
    move-object v9, v4

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_12

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_12

    :cond_12
    move-object v10, v4

    :goto_12
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    return v13

    :pswitch_3
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_13

    :cond_13
    move-object v1, v4

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_14

    :cond_14
    move-object v5, v4

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    goto :goto_15

    :cond_15
    move-object v7, v4

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_16

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v10

    goto :goto_16

    :cond_16
    move-object v10, v4

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_17

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    goto :goto_17

    :cond_17
    move-object v11, v4

    :goto_17
    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    return v13

    :pswitch_4
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    goto :goto_18

    :cond_18
    move-object v1, v4

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_19

    :cond_19
    move-object v3, v4

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_1a

    :cond_1a
    move-object v6, v4

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1b

    sget-object v9, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    goto :goto_1b

    :cond_1b
    move-object v9, v4

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1c

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_1c

    :cond_1c
    move-object v10, v4

    :goto_1c
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Landroid/os/Parcelable;)V

    return v13

    :pswitch_5
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v13

    :pswitch_6
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v13

    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_1d

    :cond_1d
    move-object v1, v4

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1e

    :cond_1e
    move-object v5, v4

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    goto :goto_1f

    :cond_1f
    move-object v7, v4

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    sget-object v10, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/RemoteAnimationAdapter;

    goto :goto_20

    :cond_20
    move-object v10, v4

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_21

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    goto :goto_21

    :cond_21
    move-object v11, v4

    :goto_21
    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Landroid/os/Parcelable;)V

    return v13

    :pswitch_8
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_22

    :cond_22
    move-object v3, v4

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_23

    :cond_23
    move-object v6, v4

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_24

    sget-object v9, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    goto :goto_24

    :cond_24
    move-object v9, v4

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_25

    :cond_25
    move-object v10, v4

    :goto_25
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Landroid/os/Parcelable;)V

    return v13

    :pswitch_9
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_26

    :cond_26
    move-object v3, v4

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_27

    :cond_27
    move-object v6, v4

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_28

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getRemoteTransition(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v9

    goto :goto_28

    :cond_28
    move-object v9, v4

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_29

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    goto :goto_29

    :cond_29
    move-object v10, v4

    :goto_29
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    return v13

    :pswitch_a
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_2a

    :cond_2a
    move-object v1, v4

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    goto :goto_2b

    :cond_2b
    move-object v5, v4

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2c

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    goto :goto_2c

    :cond_2c
    move-object v7, v4

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2d

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    goto :goto_2d

    :cond_2d
    move-object v8, v4

    :goto_2d
    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Parcelable;)V

    return v13

    :pswitch_b
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_2e

    :cond_2e
    move-object v6, v4

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f

    sget-object v7, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    goto :goto_2f

    :cond_2f
    move-object v7, v4

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_30

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->getInstanceId(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    goto :goto_30

    :cond_30
    move-object v8, v4

    :goto_30
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Landroid/os/Parcelable;)V

    return v13

    :pswitch_c
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    :cond_31
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->startTask(IILandroid/os/Bundle;)V

    return v13

    :pswitch_d
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    move v1, v13

    goto :goto_31

    :cond_32
    const/4 v1, 0x0

    :goto_31
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->exitSplitScreenOnHide(Z)V

    return v13

    :pswitch_e
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->exitSplitScreen(I)V

    return v13

    :pswitch_f
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->removeFromSideStage(I)V

    return v13

    :cond_33
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :cond_34
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    return v13

    :cond_35
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5
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
