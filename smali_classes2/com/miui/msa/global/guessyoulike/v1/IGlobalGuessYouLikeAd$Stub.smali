.class public abstract Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;
.super Landroid/os/Binder;
.source "IGlobalGuessYouLikeAd.java"

# interfaces
.implements Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

.field static final TRANSACTION_getGameFolders:I = 0x7

.field static final TRANSACTION_getGlobalColudControl:I = 0x6

.field static final TRANSACTION_handleClick:I = 0x4

.field static final TRANSACTION_handleDislike:I = 0x5

.field static final TRANSACTION_handleView:I = 0x3

.field static final TRANSACTION_loadDesktopRecommendAdInfo:I = 0x1

.field static final TRANSACTION_loadImage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.miui.msa.global.guessyoulike.v1.IGlobalGuessYouLikeAd"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 132
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 135
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v2

    .line 138
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->getGameFolders(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p0

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    .line 118
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->getGlobalColudControl()Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p0, p3, v2}, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 102
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    .line 111
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 112
    invoke-virtual {p0, v3, p1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->handleDislike(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 89
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 96
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->handleClick(Ljava/util/List;IJ)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 73
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    .line 82
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 83
    invoke-virtual {p0, v3, p1}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->handleView(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 62
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;

    move-result-object p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->loadImage(Ljava/lang/String;Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 47
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    sget-object p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    .line 55
    :cond_4
    invoke-virtual {p0, v3}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalGuessYouLikeAd$Stub;->loadDesktopRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;

    move-result-object p0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 42
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
