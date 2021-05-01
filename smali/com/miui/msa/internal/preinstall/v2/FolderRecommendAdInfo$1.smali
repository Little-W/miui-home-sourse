.class final Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo$1;
.super Ljava/lang/Object;
.source "FolderRecommendAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 1

    .line 261
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-direct {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 0

    .line 266
    new-array p1, p1, [Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo$1;->newArray(I)[Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move-result-object p1

    return-object p1
.end method
