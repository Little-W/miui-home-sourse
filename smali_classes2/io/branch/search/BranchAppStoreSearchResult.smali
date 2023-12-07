.class public final Lio/branch/search/BranchAppStoreSearchResult;
.super Lio/branch/search/BranchBaseLinkSearchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAppStoreSearchResult$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseLinkSearchResult<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/BranchAppStoreSearchResult$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/BranchAppStoreSearchResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchAppStoreSearchResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchAppStoreSearchResult;->Companion:Lio/branch/search/BranchAppStoreSearchResult$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppStoreLinkResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lio/branch/search/BranchBaseLinkSearchResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
