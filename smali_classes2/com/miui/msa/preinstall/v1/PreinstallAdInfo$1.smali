.class final Lcom/miui/msa/preinstall/v1/PreinstallAdInfo$1;
.super Ljava/lang/Object;
.source "PreinstallAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;
    .locals 0

    .line 131
    new-instance p0, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    invoke-direct {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;
    .locals 0

    .line 137
    new-array p0, p1, [Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/PreinstallAdInfo$1;->newArray(I)[Lcom/miui/msa/preinstall/v1/PreinstallAdInfo;

    move-result-object p0

    return-object p0
.end method
