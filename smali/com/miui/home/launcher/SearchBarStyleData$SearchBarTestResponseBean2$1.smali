.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
    .locals 1

    .line 468
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
    .locals 0

    .line 473
    new-array p1, p1, [Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;->newArray(I)[Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;

    move-result-object p1

    return-object p1
.end method
