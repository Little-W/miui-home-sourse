.class final Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig$1;
.super Ljava/lang/Object;
.source "GlobalCloudAdConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;
    .locals 0

    .line 62
    new-instance p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;

    invoke-direct {p0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;
    .locals 0

    .line 67
    new-array p0, p1, [Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig$1;->newArray(I)[Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;

    move-result-object p0

    return-object p0
.end method
