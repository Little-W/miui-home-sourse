.class final Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo$1;
.super Ljava/lang/Object;
.source "GlobalFolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;
    .locals 1

    .line 69
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    invoke-direct {v0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;
    .locals 0

    .line 74
    new-array p1, p1, [Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo$1;->newArray(I)[Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    move-result-object p1

    return-object p1
.end method
