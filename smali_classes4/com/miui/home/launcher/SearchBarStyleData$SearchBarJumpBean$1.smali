.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean$1;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;
    .locals 0

    .line 619
    new-instance p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;
    .locals 0

    .line 624
    new-array p0, p1, [Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean$1;->newArray(I)[Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    move-result-object p0

    return-object p0
.end method
