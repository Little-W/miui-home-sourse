.class public Lio/branch/search/BranchLinkResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/BranchLinkResult;",
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
.method public a(Landroid/os/Parcel;)Lio/branch/search/BranchLinkResult;
    .locals 1

    new-instance p0, Lio/branch/search/BranchLinkResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/branch/search/BranchLinkResult;-><init>(Landroid/os/Parcel;Lio/branch/search/BranchLinkResult$a;)V

    return-object p0
.end method

.method public a(I)[Lio/branch/search/BranchLinkResult;
    .locals 0

    new-array p0, p1, [Lio/branch/search/BranchLinkResult;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchLinkResult$a;->a(Landroid/os/Parcel;)Lio/branch/search/BranchLinkResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchLinkResult$a;->a(I)[Lio/branch/search/BranchLinkResult;

    move-result-object p0

    return-object p0
.end method
