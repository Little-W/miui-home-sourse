.class public abstract Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;
.super Landroid/os/Binder;
.source "ISoScSplitScreenListener.java"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.sosc.ISoScSplitScreenListener"

.field static final TRANSACTION_onPreSoScStateChanged:I = 0x4

.field static final TRANSACTION_onSoScStateChanged:I = 0x3

.field static final TRANSACTION_onStagePositionChanged:I = 0x1

.field static final TRANSACTION_onTaskStageChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 21
    invoke-virtual {p0, p0, v0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 32
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    instance-of v1, v0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v10, 0x1

    const-string v3, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    if-eq v1, v10, :cond_10

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_e

    const/4 v4, 0x3

    const/4 v6, 0x0

    if-eq v1, v4, :cond_7

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const v4, 0x5f4e5446

    if-eq v1, v4, :cond_0

    .line 149
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    move-object/from16 v0, p3

    .line 49
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 116
    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    move-object v1, v6

    .line 124
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    move-object v3, v6

    .line 130
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_2

    :cond_4
    move-object v4, v6

    .line 136
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    goto :goto_3

    :cond_5
    move v7, v5

    .line 140
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v8, v10

    goto :goto_4

    :cond_6
    move v8, v5

    .line 142
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v11

    .line 145
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V

    return v10

    .line 73
    :cond_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 76
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_5

    :cond_8
    move-object v1, v6

    .line 81
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 82
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_6

    :cond_9
    move-object v3, v6

    .line 87
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 88
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_7

    :cond_a
    move-object v4, v6

    .line 93
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    .line 96
    sget-object v8, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_8

    :cond_b
    move-object v8, v6

    .line 101
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 102
    sget-object v6, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v9, v10

    goto :goto_9

    :cond_d
    move v9, v5

    .line 109
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move v4, v7

    move-object v5, v8

    move v7, v9

    move v8, v11

    move v9, v12

    .line 112
    invoke-virtual/range {v0 .. v9}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    return v10

    .line 62
    :cond_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    move v5, v10

    .line 69
    :cond_f
    invoke-virtual {p0, v1, v3, v5}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->onTaskStageChanged(IIZ)V

    return v10

    .line 53
    :cond_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub;->onStagePositionChanged(II)V

    return v10
.end method
