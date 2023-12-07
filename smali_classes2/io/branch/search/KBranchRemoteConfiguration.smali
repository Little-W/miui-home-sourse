.class public final Lio/branch/search/KBranchRemoteConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/KBranchRemoteConfiguration$Companion;,
        Lio/branch/search/KBranchRemoteConfiguration$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final A:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

.field public static final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/branch/search/KBranchRemoteConfiguration$Companion;

.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/KNetworkUsageCappingRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

.field public static final z:Lio/branch/search/internal/ui/UISkeletonResolver$Default;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/KNetworkUsageCappingRule;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:I

.field public final m:I

.field public final n:J

.field public final o:I

.field public final p:Lio/branch/search/internal/ui/UISkeletonResolver;

.field public final q:Lio/branch/search/internal/ui/UISkeletonResolver;

.field public final r:Lio/branch/search/internal/ui/UISkeletonResolver;

.field public final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Z

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/lang/Integer;

.field public final w:Lio/branch/search/internal/control/AllFeatures;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/KBranchRemoteConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration;->Companion:Lio/branch/search/KBranchRemoteConfiguration$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/branch/search/KNetworkUsageCappingRule;

    sget-object v8, Lio/branch/search/KNetworkUsageCappingRule;->Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

    const/4 v3, 0x1

    const-wide/32 v4, 0xf4240

    const-string v6, "ALL_LOCAL"

    const-string v7, "ALL_CELLULAR"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(IJLjava/lang/String;Ljava/lang/String;)Lio/branch/search/KNetworkUsageCappingRule;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v0, v9

    const/4 v3, 0x7

    const-wide/32 v4, 0x2625a0

    const-string v6, "ALL_LOCAL"

    const-string v7, "ALL_CELLULAR"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(IJLjava/lang/String;Ljava/lang/String;)Lio/branch/search/KNetworkUsageCappingRule;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v0, v10

    const/4 v3, 0x1

    const-wide/32 v4, 0x989680

    const-string v6, "ALL_LOCAL|ANALYTICS"

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(IJLjava/lang/String;Ljava/lang/String;)Lio/branch/search/KNetworkUsageCappingRule;

    move-result-object v2

    const/4 v11, 0x2

    aput-object v2, v0, v11

    const-wide/32 v4, 0x186a0

    const-string v6, "ANALYTICS"

    const-string v7, "ALL_CELLULAR"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(IJLjava/lang/String;Ljava/lang/String;)Lio/branch/search/KNetworkUsageCappingRule;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration;->x:Ljava/util/List;

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    new-array v2, v11, [Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    new-instance v12, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    sget-object v21, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    sget-object v22, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    new-instance v6, Lio/branch/search/internal/ui/LinkEntityResolver;

    sget-object v23, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    sget-object v24, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    sget-object v25, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object v13, v6

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v22

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lio/branch/search/internal/ui/AppEntityResolver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1e

    move-object v13, v7

    move-object/from16 v14, v21

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/AppEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v8, "local_search"

    move-object v3, v12

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    invoke-direct/range {v3 .. v8}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V

    aput-object v12, v2, v9

    new-instance v12, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    new-instance v6, Lio/branch/search/internal/ui/LinkEntityResolver;

    const/16 v19, 0x10

    move-object v13, v6

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v22

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lio/branch/search/internal/ui/AppEntityResolver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1e

    move-object v13, v7

    move-object/from16 v14, v21

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/AppEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v8, "remote_search"

    move-object v3, v12

    invoke-direct/range {v3 .. v8}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V

    aput-object v12, v2, v10

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lio/branch/search/internal/ui/AdLogic$Static;

    new-instance v4, Lio/branch/search/internal/ui/LinkEntityResolver;

    const/16 v19, 0x10

    move-object v13, v4

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v22

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4}, Lio/branch/search/internal/ui/AdLogic$Static;-><init>(Lio/branch/search/internal/ui/LinkEntityResolver;)V

    invoke-direct {v0, v2, v3}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;-><init>(Ljava/util/List;Lio/branch/search/internal/ui/AdLogic;)V

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration;->y:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    new-array v2, v11, [Lio/branch/search/internal/ui/ContainerResolver;

    new-instance v3, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    new-instance v4, Lio/branch/search/internal/ui/AppEntityResolver;

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v13, v4

    move-object/from16 v14, v21

    move-object/from16 v16, v22

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/AppEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "suggested_app"

    invoke-direct {v3, v1, v4, v1, v5}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;-><init>(Ljava/lang/String;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/Integer;Ljava/lang/String;)V

    aput-object v3, v2, v9

    new-instance v3, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    new-instance v4, Lio/branch/search/internal/ui/LinkEntityResolver;

    move-object v13, v4

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v17, v25

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v5, "zero_state"

    invoke-direct {v3, v1, v4, v1, v5}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;-><init>(Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V

    aput-object v3, v2, v10

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lio/branch/search/internal/ui/AdLogic$Static;

    new-instance v4, Lio/branch/search/internal/ui/LinkEntityResolver;

    move-object v13, v4

    move-object/from16 v16, v25

    move-object/from16 v17, v22

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4}, Lio/branch/search/internal/ui/AdLogic$Static;-><init>(Lio/branch/search/internal/ui/LinkEntityResolver;)V

    invoke-direct {v0, v2, v3}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;-><init>(Ljava/util/List;Lio/branch/search/internal/ui/AdLogic;)V

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration;->z:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    new-instance v2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    new-instance v9, Lio/branch/search/internal/ui/LinkEntityResolver;

    sget-object v8, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    move-object v3, v9

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v22

    invoke-direct/range {v3 .. v8}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;)V

    new-instance v3, Lio/branch/search/internal/ui/AppEntityResolver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1e

    move-object v13, v3

    move-object/from16 v14, v21

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/AppEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v4, "app_store_search"

    invoke-direct {v2, v1, v9, v3, v4}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;-><init>(Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lio/branch/search/internal/ui/AdLogic$Static;

    new-instance v3, Lio/branch/search/internal/ui/LinkEntityResolver;

    const/16 v19, 0x10

    move-object v13, v3

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v22

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v3}, Lio/branch/search/internal/ui/AdLogic$Static;-><init>(Lio/branch/search/internal/ui/LinkEntityResolver;)V

    invoke-direct {v0, v1, v2}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;-><init>(Ljava/util/List;Lio/branch/search/internal/ui/AdLogic;)V

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration;->A:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration;->B:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x7fffff

    const/16 v26, 0x0

    invoke-direct/range {v0 .. v26}, Lio/branch/search/KBranchRemoteConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/KNetworkUsageCappingRule;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIJI",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lio/branch/search/internal/control/AllFeatures;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    const-string v2, "f2ca1bb6c7e907d06dafe4687e579fce"

    :goto_0
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    move-object v2, p3

    goto :goto_1

    :cond_1
    const-string v2, "2be9fb0d-c5c3-44d4-9abe-2931ba4bb3ae"

    :goto_1
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    move v2, p4

    goto :goto_2

    :cond_2
    const/16 v2, 0x28

    :goto_2
    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    move v2, p5

    goto :goto_3

    :cond_3
    const/16 v2, 0x3e8

    :goto_3
    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    move v2, p6

    goto :goto_4

    :cond_4
    const/16 v2, 0x96

    :goto_4
    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x64

    if-eqz v2, :cond_5

    move/from16 v2, p7

    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    goto :goto_5

    :cond_5
    iput v3, v0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    move/from16 v2, p8

    goto :goto_6

    :cond_6
    const/16 v2, 0x1e

    :goto_6
    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    move-object/from16 v2, p9

    goto :goto_7

    :cond_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UUID.randomUUID().toString()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    move-object/from16 v2, p10

    goto :goto_8

    :cond_8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_8
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    move-object/from16 v2, p11

    goto :goto_9

    :cond_9
    sget-object v2, Lio/branch/search/KBranchRemoteConfiguration;->x:Ljava/util/List;

    :goto_9
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    move-object/from16 v2, p12

    goto :goto_a

    :cond_a
    sget-object v2, Lio/branch/search/KBranchRemoteConfiguration;->B:Ljava/util/List;

    :goto_a
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    move/from16 v2, p13

    goto :goto_b

    :cond_b
    const/16 v2, 0x19

    :goto_b
    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    move/from16 v2, p14

    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    goto :goto_c

    :cond_c
    iput v3, v0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    move-wide/from16 v4, p15

    goto :goto_d

    :cond_d
    const-wide/32 v4, 0x400000

    :goto_d
    iput-wide v4, v0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    move/from16 v2, p17

    iput v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    goto :goto_e

    :cond_e
    iput v3, v0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_f

    move-object/from16 v2, p18

    goto :goto_f

    :cond_f
    sget-object v2, Lio/branch/search/KBranchRemoteConfiguration;->y:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    :goto_f
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_10

    move-object/from16 v2, p19

    goto :goto_10

    :cond_10
    sget-object v2, Lio/branch/search/KBranchRemoteConfiguration;->z:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    :goto_10
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    move-object/from16 v2, p20

    goto :goto_11

    :cond_11
    sget-object v2, Lio/branch/search/KBranchRemoteConfiguration;->A:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    :goto_11
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    move-object/from16 v2, p21

    goto :goto_12

    :cond_12
    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Pair;

    const-string v4, "user_query"

    invoke-static {v4, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/BranchConfiguration$e;->b:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v4}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "branch_key"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v4, Lio/branch/search/e$a;->h:Lio/branch/search/e$a;

    invoke-virtual {v4}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user_locale"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/BranchConfiguration$e;->c:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v4}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "country"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    :goto_12
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    move/from16 v2, p22

    iput-boolean v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    goto :goto_13

    :cond_13
    iput-boolean v3, v0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-eqz v2, :cond_14

    move-object/from16 v2, p23

    goto :goto_14

    :cond_14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_14
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-eqz v2, :cond_15

    move-object/from16 v2, p24

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    move-object/from16 v1, p25

    goto :goto_16

    :cond_16
    new-instance v1, Lio/branch/search/internal/control/AllFeatures;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    invoke-direct/range {p1 .. p8}, Lio/branch/search/internal/control/AllFeatures;-><init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_16
    iput-object v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/KNetworkUsageCappingRule;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIJI",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Lio/branch/search/internal/ui/UISkeletonResolver;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lio/branch/search/internal/control/AllFeatures;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object/from16 v10, p20

    move-object/from16 v11, p22

    move-object/from16 v12, p24

    const-string v13, "enc_key"

    invoke-static {p1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "enc_key_id"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "sdk_device_id"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "identity_cookies"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "network_capping_rules"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "app_usage_event_types"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "search_skeleton"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "zero_state_skeleton"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "app_store_skeleton"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "app_store_query_param_bindings"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "error_ping_param_rule"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "allFeatures"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    iput-object v2, v0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    move/from16 v1, p3

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    move/from16 v1, p4

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    move/from16 v1, p5

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    move/from16 v1, p6

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    move/from16 v1, p7

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    iput-object v3, v0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    iput-object v4, v0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    iput-object v5, v0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    iput-object v6, v0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    move/from16 v1, p12

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    move/from16 v1, p13

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    move/from16 v1, p16

    iput v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    iput-object v7, v0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    iput-object v8, v0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    iput-object v9, v0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    iput-object v10, v0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    move/from16 v1, p21

    iput-boolean v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    iput-object v11, v0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    move-object/from16 v1, p23

    iput-object v1, v0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    iput-object v12, v0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p25

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "f2ca1bb6c7e907d06dafe4687e579fce"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const-string v2, "2be9fb0d-c5c3-44d4-9abe-2931ba4bb3ae"

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const/16 v3, 0x28

    goto :goto_2

    :cond_2
    move/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    const/16 v4, 0x3e8

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    const/16 v5, 0x96

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    const/16 v6, 0x64

    goto :goto_5

    :cond_5
    move/from16 v6, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/16 v8, 0x1e

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UUID.randomUUID().toString()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    sget-object v11, Lio/branch/search/KBranchRemoteConfiguration;->x:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    sget-object v12, Lio/branch/search/KBranchRemoteConfiguration;->B:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/16 v13, 0x19

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/16 v14, 0x64

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const-wide/32 v15, 0x400000

    goto :goto_d

    :cond_d
    move-wide/from16 v15, p14

    :goto_d
    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_e

    const/16 v7, 0x64

    goto :goto_e

    :cond_e
    move/from16 v7, p16

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    sget-object v17, Lio/branch/search/KBranchRemoteConfiguration;->y:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    sget-object v18, Lio/branch/search/KBranchRemoteConfiguration;->z:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    goto :goto_10

    :cond_10
    move-object/from16 v18, p18

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    sget-object v19, Lio/branch/search/KBranchRemoteConfiguration;->A:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    goto :goto_11

    :cond_11
    move-object/from16 v19, p19

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    const/16 v21, 0x1

    move/from16 p16, v7

    if-eqz v20, :cond_12

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/Pair;

    move-wide/from16 p14, v15

    const-string v15, "user_query"

    invoke-static {v15, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v7, v16

    sget-object v15, Lio/branch/search/BranchConfiguration$e;->b:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v15}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 p13, v14

    const-string v14, "branch_key"

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    aput-object v14, v7, v21

    sget-object v14, Lio/branch/search/e$a;->h:Lio/branch/search/e$a;

    invoke-virtual {v14}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "user_locale"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v7, v15

    sget-object v14, Lio/branch/search/BranchConfiguration$e;->c:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v14}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "country"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v7, v15

    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    goto :goto_12

    :cond_12
    move/from16 p13, v14

    move-wide/from16 p14, v15

    move-object/from16 v7, p20

    :goto_12
    const/high16 v14, 0x80000

    and-int/2addr v14, v0

    if-eqz v14, :cond_13

    goto :goto_13

    :cond_13
    move/from16 v21, p21

    :goto_13
    const/high16 v14, 0x100000

    and-int/2addr v14, v0

    if-eqz v14, :cond_14

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    goto :goto_14

    :cond_14
    move-object/from16 v14, p22

    :goto_14
    const/high16 v15, 0x200000

    and-int/2addr v15, v0

    if-eqz v15, :cond_15

    const/4 v15, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v0, v0, v16

    if-eqz v0, :cond_16

    new-instance v0, Lio/branch/search/internal/control/AllFeatures;

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1f

    const/16 v26, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v16

    move-object/from16 p3, v20

    move-object/from16 p4, v22

    move-object/from16 p5, v23

    move-object/from16 p6, v24

    move/from16 p7, v25

    move-object/from16 p8, v26

    invoke-direct/range {p1 .. p8}, Lio/branch/search/internal/control/AllFeatures;-><init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_16

    :cond_16
    move-object/from16 v0, p24

    :goto_16
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v7

    move/from16 p21, v21

    move-object/from16 p22, v14

    move-object/from16 p23, v15

    move-object/from16 p24, v0

    invoke-direct/range {p0 .. p24}, Lio/branch/search/KBranchRemoteConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;)V

    return-void
.end method

.method public static final a(Lio/branch/search/KBranchRemoteConfiguration;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 11

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    const-string v1, "f2ca1bb6c7e907d06dafe4687e579fce"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    const-string v3, "2be9fb0d-c5c3-44d4-9abe-2931ba4bb3ae"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    const/16 v3, 0x28

    if-eq v0, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_5

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_6
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    const/4 v4, 0x3

    if-nez v0, :cond_8

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    invoke-interface {p1, p2, v4, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_9
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    const/16 v5, 0x96

    if-eq v0, v5, :cond_a

    move v0, v1

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    const/4 v5, 0x4

    if-nez v0, :cond_b

    invoke-interface {p1, p2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    invoke-interface {p1, p2, v5, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_c
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    const/16 v6, 0x64

    if-eq v0, v6, :cond_d

    move v0, v1

    goto :goto_3

    :cond_d
    move v0, v2

    :goto_3
    const/4 v7, 0x5

    if-nez v0, :cond_e

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    invoke-interface {p1, p2, v7, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_f
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    const/16 v7, 0x1e

    if-eq v0, v7, :cond_10

    move v0, v1

    goto :goto_4

    :cond_10
    move v0, v2

    :goto_4
    const/4 v7, 0x6

    if-nez v0, :cond_11

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    invoke-interface {p1, p2, v7, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_12
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UUID.randomUUID().toString()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v7, 0x7

    if-nez v0, :cond_13

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    invoke-interface {p1, p2, v7, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/16 v7, 0x8

    if-nez v0, :cond_15

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v8, v8}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    iget-object v8, p0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    invoke-interface {p1, p2, v7, v0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    sget-object v7, Lio/branch/search/KBranchRemoteConfiguration;->x:Ljava/util/List;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/16 v7, 0x9

    if-nez v0, :cond_17

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v8, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v0, v8}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v8, p0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    invoke-interface {p1, p2, v7, v0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    sget-object v7, Lio/branch/search/KBranchRemoteConfiguration;->B:Ljava/util/List;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/16 v7, 0xa

    if-nez v0, :cond_19

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v8, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v0, v8}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v8, p0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    invoke-interface {p1, p2, v7, v0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    const/16 v7, 0x19

    if-eq v0, v7, :cond_1b

    move v0, v1

    goto :goto_5

    :cond_1b
    move v0, v2

    :goto_5
    const/16 v7, 0xb

    if-nez v0, :cond_1c

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    invoke-interface {p1, p2, v7, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_1d
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    if-eq v0, v6, :cond_1e

    move v0, v1

    goto :goto_6

    :cond_1e
    move v0, v2

    :goto_6
    const/16 v7, 0xc

    if-nez v0, :cond_1f

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    invoke-interface {p1, p2, v7, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_20
    iget-wide v7, p0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    const-wide/32 v9, 0x400000

    cmp-long v0, v7, v9

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_7

    :cond_21
    move v0, v2

    :goto_7
    if-nez v0, :cond_22

    const/16 v0, 0xd

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    iget-wide v7, p0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    const/16 v0, 0xd

    invoke-interface {p1, p2, v0, v7, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_23
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    if-eq v0, v6, :cond_24

    move v0, v1

    goto :goto_8

    :cond_24
    move v0, v2

    :goto_8
    if-nez v0, :cond_25

    const/16 v0, 0xe

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    const/16 v6, 0xe

    invoke-interface {p1, p2, v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_26
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    sget-object v6, Lio/branch/search/KBranchRemoteConfiguration;->y:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v6, "io.branch.search.internal.ui.UISkeletonResolver"

    if-nez v0, :cond_27

    const/16 v0, 0xf

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v1, [Lkotlin/reflect/KClass;

    const-class v9, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v8, v2

    new-array v9, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v10, v9, v2

    invoke-direct {v0, v6, v7, v8, v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v7, p0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    const/16 v8, 0xf

    invoke-interface {p1, p2, v8, v0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_28
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    sget-object v7, Lio/branch/search/KBranchRemoteConfiguration;->z:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_29

    const/16 v0, 0x10

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v1, [Lkotlin/reflect/KClass;

    const-class v9, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v8, v2

    new-array v9, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v10, v9, v2

    invoke-direct {v0, v6, v7, v8, v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v7, p0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    const/16 v8, 0x10

    invoke-interface {p1, p2, v8, v0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2a
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    sget-object v7, Lio/branch/search/KBranchRemoteConfiguration;->A:Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_2b

    const/16 v0, 0x11

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v1, [Lkotlin/reflect/KClass;

    const-class v9, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v8, v2

    new-array v9, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v10, v9, v2

    invoke-direct {v0, v6, v7, v8, v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v6, p0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    const/16 v7, 0x11

    invoke-interface {p1, p2, v7, v0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2c
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    new-array v5, v5, [Lkotlin/Pair;

    const-string v6, "user_query"

    const-string v7, "user_query"

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v2

    sget-object v6, Lio/branch/search/BranchConfiguration$e;->b:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v6}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "branch_key"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v1

    sget-object v6, Lio/branch/search/e$a;->h:Lio/branch/search/e$a;

    invoke-virtual {v6}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user_locale"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v3

    sget-object v3, Lio/branch/search/BranchConfiguration$e;->c:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v3}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "country"

    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_2d

    const/16 v0, 0x12

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v3, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    iget-object v3, p0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    const/16 v4, 0x12

    invoke-interface {p1, p2, v4, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2e
    iget-boolean v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    if-eq v0, v1, :cond_2f

    move v2, v1

    :cond_2f
    if-nez v2, :cond_30

    const/16 v0, 0x13

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    iget-boolean v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    const/16 v2, 0x13

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_31
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_32

    const/16 v0, 0x14

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    const/16 v3, 0x14

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_33
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_34

    const/16 v0, 0x15

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    const/16 v3, 0x15

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    new-instance v10, Lio/branch/search/internal/control/AllFeatures;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lio/branch/search/internal/control/AllFeatures;-><init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_36

    const/16 v0, 0x16

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_36
    sget-object v0, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    const/16 v1, 0x16

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    return p0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration$a;

    invoke-direct {v0, p1}, Lio/branch/search/KBranchRemoteConfiguration$a;-><init>(Z)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p1

    sget-object v0, Lio/branch/search/KBranchRemoteConfiguration;->Companion:Lio/branch/search/KBranchRemoteConfiguration$Companion;

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lio/branch/search/internal/control/AllFeatures;
    .locals 0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    return p0
.end method

.method public final d()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/KBranchRemoteConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/KBranchRemoteConfiguration;

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    iget-wide v2, p1, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    iget v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    iget-boolean v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    iget-object v1, p1, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    iget-object p1, p1, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    return p0
.end method

.method public final g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :cond_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_c
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    return p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    return p0
.end method

.method public final m()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/KNetworkUsageCappingRule;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    return-object p0
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    return p0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    return-wide v0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    return p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    return p0
.end method

.method public final s()Lio/branch/search/internal/ui/UISkeletonResolver;
    .locals 0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    return-object p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KBranchRemoteConfiguration(enc_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enc_key_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", network_data_retention_window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", analytics_records_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fallback_latency_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ads_zero_state_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ping_job_cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdk_device_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identity_cookies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network_capping_rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app_usage_event_types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sqlite_max_cache_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload_upload_max_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload_upload_max_bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", max_payloads_to_store_on_disk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", search_skeleton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->p:Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zero_state_skeleton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app_store_skeleton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->r:Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app_store_query_param_bindings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->s:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app_store_use_api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error_ping_param_rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max_url_impression_tracking_pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KBranchRemoteConfiguration;->v:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->w:Lio/branch/search/internal/control/AllFeatures;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lio/branch/search/internal/ui/UISkeletonResolver;
    .locals 0

    iget-object p0, p0, Lio/branch/search/KBranchRemoteConfiguration;->q:Lio/branch/search/internal/ui/UISkeletonResolver;

    return-object p0
.end method
