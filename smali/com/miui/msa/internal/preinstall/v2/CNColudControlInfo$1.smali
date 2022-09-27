.class Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo$1;
.super Ljava/lang/Object;
.source "CNColudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 1

    .line 109
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    invoke-direct {v0, p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 0

    .line 114
    new-array p1, p1, [Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo$1;->newArray(I)[Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p1

    return-object p1
.end method
