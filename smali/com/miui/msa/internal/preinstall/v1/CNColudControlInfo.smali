.class public Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
.super Ljava/lang/Object;
.source "CNColudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isCloseAd:Z

.field private isOpenXout:Z

.field private queryType:Ljava/lang/String;

.field private xOutProtectionInMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->queryType:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isCloseAd:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isOpenXout:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->xOutProtectionInMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQueryType()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->queryType:Ljava/lang/String;

    return-object v0
.end method

.method public getxOutProtectionInMillis()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->xOutProtectionInMillis:J

    return-wide v0
.end method

.method public isCloseAd()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isCloseAd:Z

    return v0
.end method

.method public isOpenXout()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isOpenXout:Z

    return v0
.end method

.method public setCloseAd(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isCloseAd:Z

    return-void
.end method

.method public setOpenXout(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isOpenXout:Z

    return-void
.end method

.method public setQueryType(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->queryType:Ljava/lang/String;

    return-void
.end method

.method public setxOutProtectionInMillis(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->xOutProtectionInMillis:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 61
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->queryType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-boolean p2, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isCloseAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-boolean p2, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isOpenXout:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->xOutProtectionInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
