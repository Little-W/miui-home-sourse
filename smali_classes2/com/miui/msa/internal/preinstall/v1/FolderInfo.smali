.class public Lcom/miui/msa/internal/preinstall/v1/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field folderTitle:Ljava/lang/String;

.field packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->packages:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->packages:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->packages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->folderTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->folderTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->packages:Ljava/util/List;

    return-object p0
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->folderTitle:Ljava/lang/String;

    return-void
.end method

.method public setPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->packages:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 62
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->packages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 63
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->folderTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
