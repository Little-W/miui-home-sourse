.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean$1;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;
    .locals 1

    .line 799
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 796
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;
    .locals 0

    .line 804
    new-array p1, p1, [Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 796
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean$1;->newArray(I)[Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    move-result-object p1

    return-object p1
.end method
