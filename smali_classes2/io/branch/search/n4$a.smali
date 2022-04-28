.class public final synthetic Lio/branch/search/n4$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/c0;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/branch/search/m4;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/BranchBaseAppResult<",
        "+",
        "Lio/branch/search/BranchBaseLinkResult;",
        ">;>;",
        "Ljava/util/List<",
        "+",
        "Lio/branch/search/BranchBaseAppResult<",
        "+",
        "Lio/branch/search/BranchBaseLinkResult;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/n4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/n4$a;

    invoke-direct {v0}, Lio/branch/search/n4$a;-><init>()V

    sput-object v0, Lio/branch/search/n4$a;->a:Lio/branch/search/n4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Lio/branch/search/n4;

    const-string v3, "adjustExistingAd"

    const-string v4, "adjustExistingAd(Lio/branch/search/internal/ui/SkeletonVisitor;Ljava/util/List;)Ljava/util/List;"

    const/4 v1, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/m4;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;)",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lio/branch/search/n4;->a(Lio/branch/search/m4;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/m4;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/n4$a;->a(Lio/branch/search/m4;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
