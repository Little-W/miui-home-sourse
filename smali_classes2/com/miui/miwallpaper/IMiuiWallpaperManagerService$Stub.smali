.class public abstract Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;
.super Landroid/os/Binder;
.source "IMiuiWallpaperManagerService.java"

# interfaces
.implements Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 361
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 351
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiDefaultWallpaperType(I)Ljava/lang/String;

    move-result-object p0

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 341
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 344
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->isMiuiDefaultWallpaper(I)Z

    move-result p0

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 329
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v3

    .line 333
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1

    move v3, v1

    .line 335
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 336
    invoke-virtual {p0, p1, v3, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->updateKeyguardWallpaperStateAnim(ZZI)V

    return v1

    .line 319
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getWallpaperBlurColor(I)I

    move-result p0

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 291
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 300
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/content/ComponentName;

    :cond_2
    move-object v6, v0

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v3

    .line 308
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    move v8, v3

    .line 310
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v9, p2

    .line 311
    invoke-virtual/range {v2 .. v9}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->setWallpaper2(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ZZLjava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 314
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 285
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->showWallpaperUnlockAnim()V

    return v1

    .line 275
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->updateKeyguardWallpaperRatio(FJ)V

    return v1

    .line 267
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v3, v1

    .line 270
    :cond_5
    invoke-virtual {p0, v3}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->updateKeyguardWallpaperState(Z)V

    return v1

    .line 259
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v3, v1

    .line 262
    :cond_6
    invoke-virtual {p0, v3}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->showWallpaperScreenOnAnim(Z)V

    return v1

    .line 251
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->bindSystemUIProxy(Lcom/miui/miwallpaper/IMiuiKeyguardWallpaperCallback;)V

    return v1

    .line 243
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiPresetWallpaperPath()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 233
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getLastMiuiWallpaperType(I)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 207
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 216
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/content/ComponentName;

    :cond_7
    move-object v6, v0

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    move v7, v1

    goto :goto_3

    :cond_8
    move v7, v3

    .line 224
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v8, p2

    .line 225
    invoke-virtual/range {v2 .. v8}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->setWallpaper(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ZLjava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 228
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 197
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getGalleryJson(I)Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 176
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 179
    sget-object p1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    goto :goto_4

    :cond_9
    move-object p1, v0

    .line 185
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 186
    sget-object p4, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/RemoteViews;

    .line 191
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->setGalleryRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 167
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->unRegisterWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 156
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->registerWallpaperChangeListener(Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback;I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiWallpaperPreview(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_b

    .line 146
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p0, p3, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 150
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 124
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_6

    :cond_c
    move v0, v3

    .line 132
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d

    move v3, v1

    .line 133
    :cond_d
    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiWallpaperPath(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 114
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiWallpaperType(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 98
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p0

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p0, p3, v1}, Landroid/app/WallpaperColors;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 108
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 89
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->clearWallpaper(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 80
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->turnOffFashionGallery(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 56
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 65
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    :cond_f
    move-object v6, v0

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    move-object v7, p1

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->setMiuiWallpaper(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 48
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub;->getMiuiWallpaperSdkVersion()F

    move-result p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    .line 43
    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
