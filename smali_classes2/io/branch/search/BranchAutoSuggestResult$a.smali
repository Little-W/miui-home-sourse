.class public final Lio/branch/search/BranchAutoSuggestResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchAutoSuggestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/branch/search/BranchAutoSuggestResult;",
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
.method public a(Landroid/os/Parcel;)Lio/branch/search/BranchAutoSuggestResult;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/branch/search/BranchAutoSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lio/branch/search/BranchAutoSuggestResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lio/branch/search/BranchAutoSuggestResult;-><init>(Ljava/util/List;Ljava/lang/String;Lio/branch/search/BranchAutoSuggestResult$a;)V

    return-object v1
.end method

.method public a(I)[Lio/branch/search/BranchAutoSuggestResult;
    .locals 0

    new-array p1, p1, [Lio/branch/search/BranchAutoSuggestResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAutoSuggestResult$a;->a(Landroid/os/Parcel;)Lio/branch/search/BranchAutoSuggestResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAutoSuggestResult$a;->a(I)[Lio/branch/search/BranchAutoSuggestResult;

    move-result-object p1

    return-object p1
.end method
