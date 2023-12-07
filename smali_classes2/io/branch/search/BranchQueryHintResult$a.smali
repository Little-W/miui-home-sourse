.class public Lio/branch/search/BranchQueryHintResult$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchQueryHintResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/BranchQueryHintResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lio/branch/search/BranchQueryHintResult;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lio/branch/search/BranchQueryHint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/branch/search/BranchQueryHintResult;

    invoke-direct {v0, p0, p1}, Lio/branch/search/BranchQueryHintResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lio/branch/search/BranchQueryHintResult;
    .locals 0

    new-array p0, p1, [Lio/branch/search/BranchQueryHintResult;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchQueryHintResult$a;->a(Landroid/os/Parcel;)Lio/branch/search/BranchQueryHintResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchQueryHintResult$a;->a(I)[Lio/branch/search/BranchQueryHintResult;

    move-result-object p0

    return-object p0
.end method
