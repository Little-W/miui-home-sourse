.class public Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;
.super Ljava/lang/Object;
.source "PreinstallAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_APP:I = 0x1

.field private static final TYPE_HYBRID:I = 0x2


# instance fields
.field private ex:Ljava/lang/String;

.field private hybridIntent:Ljava/lang/String;

.field private iconUri:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private passback:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->iconUri:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->iconUri:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->title:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->packageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->iconUri:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->passback:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->ex:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->type:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->hybridIntent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEx()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->ex:Ljava/lang/String;

    return-object p0
.end method

.method public getHybridIntent()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->hybridIntent:Ljava/lang/String;

    return-object p0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->iconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPassback()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->passback:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->type:I

    return p0
.end method

.method public isAppType()Z
    .locals 1

    .line 34
    iget p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHybridType()Z
    .locals 1

    .line 38
    iget p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->ex:Ljava/lang/String;

    return-void
.end method

.method public setHybridIntent(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->hybridIntent:Ljava/lang/String;

    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->iconUri:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPassback(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->passback:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 113
    iget-object p2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget p2, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;->hybridIntent:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
