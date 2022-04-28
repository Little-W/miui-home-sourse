.class public Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deletedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deletedValue:I

.field folderTitle:Ljava/lang/String;

.field private initValue:I

.field private installedValue:I

.field packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->packages:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedPackages:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->packages:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedPackages:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->packages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->folderTitle:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->tagId:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->initValue:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->installedValue:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedValue:I

    .line 93
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeletedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedPackages:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedValue:I

    return v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->folderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getInitValue()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->initValue:I

    return v0
.end method

.method public getInstalledValue()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->installedValue:I

    return v0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->packages:Ljava/util/List;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeletedPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedPackages:Ljava/util/List;

    return-void
.end method

.method public setDeletedValue(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedValue:I

    return-void
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->folderTitle:Ljava/lang/String;

    return-void
.end method

.method public setInitValue(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->initValue:I

    return-void
.end method

.method public setInstalledValue(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->installedValue:I

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

    .line 75
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->packages:Ljava/util/List;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->tagId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 115
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->packages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 116
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->folderTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->initValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->installedValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->deletedPackages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
