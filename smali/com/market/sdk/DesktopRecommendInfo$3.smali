.class Lcom/market/sdk/DesktopRecommendInfo$3;
.super Ljava/lang/Object;
.source "DesktopRecommendInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/DesktopRecommendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/market/sdk/DesktopRecommendInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/DesktopRecommendInfo;
    .locals 0

    .line 102
    new-instance p0, Lcom/market/sdk/DesktopRecommendInfo;

    invoke-direct {p0, p1}, Lcom/market/sdk/DesktopRecommendInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/market/sdk/DesktopRecommendInfo$3;->createFromParcel(Landroid/os/Parcel;)Lcom/market/sdk/DesktopRecommendInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/market/sdk/DesktopRecommendInfo;
    .locals 0

    .line 106
    new-array p0, p1, [Lcom/market/sdk/DesktopRecommendInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/market/sdk/DesktopRecommendInfo$3;->newArray(I)[Lcom/market/sdk/DesktopRecommendInfo;

    move-result-object p0

    return-object p0
.end method
