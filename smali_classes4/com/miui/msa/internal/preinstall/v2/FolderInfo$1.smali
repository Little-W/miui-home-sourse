.class Lcom/miui/msa/internal/preinstall/v2/FolderInfo$1;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/msa/internal/preinstall/v2/FolderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
    .locals 0

    .line 99
    new-instance p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    invoke-direct {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
    .locals 0

    .line 104
    new-array p0, p1, [Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo$1;->newArray(I)[Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    move-result-object p0

    return-object p0
.end method
