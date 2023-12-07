.class public final Lio/branch/search/c;
.super Lio/branch/search/BranchBaseAppResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseAppResult<",
        "Lio/branch/search/BranchAppStoreLinkResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lio/branch/search/c$a;


# instance fields
.field public final l:Lio/branch/search/BranchAppStoreLinkResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/c;->CREATOR:Lio/branch/search/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lio/branch/search/BranchAppStoreLinkResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "parcel.readParcelable<Br\u2026class.java.classLoader)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/branch/search/BranchAppStoreLinkResult;

    invoke-direct {p0, p1}, Lio/branch/search/c;-><init>(Lio/branch/search/BranchAppStoreLinkResult;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchAppStoreLinkResult;)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "link"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    iget-object v4, v0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v5, v0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    iget-object v6, v0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    iget-object v7, v0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchBaseLinkResult;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    sget-object v13, Lio/branch/search/k;->f:Lio/branch/search/k;

    iget-object v14, v0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "app_store_search"

    const-string v16, "app_store"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v16}, Lio/branch/search/BranchBaseAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/branch/search/c;->l:Lio/branch/search/BranchAppStoreLinkResult;

    invoke-virtual/range {p0 .. p0}, Lio/branch/search/BranchBaseAppResult;->a()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/c;->l:Lio/branch/search/BranchAppStoreLinkResult;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-super {p0, p1, p2}, Lio/branch/search/BranchBaseAppResult;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
