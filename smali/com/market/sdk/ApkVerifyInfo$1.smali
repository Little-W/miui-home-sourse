.class final Lcom/market/sdk/ApkVerifyInfo$1;
.super Ljava/lang/Object;
.source "ApkVerifyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/ApkVerifyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/market/sdk/ApkVerifyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/ApkVerifyInfo;
    .locals 1

    .line 87
    new-instance v0, Lcom/market/sdk/ApkVerifyInfo;

    invoke-direct {v0, p1}, Lcom/market/sdk/ApkVerifyInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/market/sdk/ApkVerifyInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/ApkVerifyInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/market/sdk/ApkVerifyInfo;
    .locals 0

    .line 91
    new-array p1, p1, [Lcom/market/sdk/ApkVerifyInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/market/sdk/ApkVerifyInfo$1;->newArray(I)[Lcom/market/sdk/ApkVerifyInfo;

    move-result-object p1

    return-object p1
.end method
