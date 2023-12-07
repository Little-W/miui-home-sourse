.class public final Lio/branch/search/m1;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/app/usage/UsageStatsManager;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/app/usage/UsageEvents;",
            "Lio/branch/search/l1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/usage/UsageStatsManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/usage/UsageEvents;",
            "Lio/branch/search/l1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/m1;->a:Landroid/app/usage/UsageStatsManager;

    iput-object p2, p0, Lio/branch/search/m1;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lio/branch/search/m1$a;->a:Lio/branch/search/m1$a;

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/branch/search/m1;-><init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lio/branch/search/l1;
    .locals 1

    iget-object v0, p0, Lio/branch/search/m1;->a:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/branch/search/m1;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/l1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final a(IJJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/m1;->a:Landroid/app/usage/UsageStatsManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
