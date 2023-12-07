.class public final Lio/branch/search/l1;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/app/usage/UsageEvents;


# direct methods
.method public constructor <init>(Landroid/app/usage/UsageEvents;)V
    .locals 1

    const-string v0, "usageEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/l1;->a:Landroid/app/usage/UsageEvents;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/usage/UsageEvents$Event;
    .locals 1

    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    iget-object p0, p0, Lio/branch/search/l1;->a:Landroid/app/usage/UsageEvents;

    invoke-virtual {p0, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    return-object v0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lio/branch/search/l1;->a:Landroid/app/usage/UsageEvents;

    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p0

    return p0
.end method
