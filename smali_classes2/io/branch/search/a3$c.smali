.class public final Lio/branch/search/a3$c;
.super Lio/branch/search/a3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    const-class v0, Lio/branch/search/internal/services/ScheduledQueryService;

    const v1, 0x22946e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lio/branch/search/a3;-><init>(ILjava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lio/branch/search/a3$c;->c:J

    return-void
.end method


# virtual methods
.method public a(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .locals 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-wide v0, p0, Lio/branch/search/a3$c;->c:J

    const/16 p0, 0xa

    int-to-long v2, p0

    div-long v2, v0, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/branch/search/a3$c;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    :goto_0
    return-object p1
.end method
