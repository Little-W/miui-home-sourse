.class public final Lio/branch/search/n2$c;
.super Lio/branch/search/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const v0, 0x22946e

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/branch/search/n2;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lio/branch/search/n2$c;->b:J

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lio/branch/search/internal/services/ScheduledQueryService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lio/branch/search/n2;->a()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lio/branch/search/n2$c;->b:J

    const/16 v2, 0xa

    int-to-long v2, v2

    div-long v2, v0, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/branch/search/n2$c;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    :goto_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    const-string v0, "b.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
