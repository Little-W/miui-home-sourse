.class public abstract Lio/branch/search/a3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/a3$c;,
        Lio/branch/search/a3$a;,
        Lio/branch/search/a3$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/a3;->a:I

    iput-object p2, p0, Lio/branch/search/a3;->b:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/branch/search/a3;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lio/branch/search/a3;->a:I

    return p0
.end method

.method public abstract a(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
.end method

.method public final a(Landroid/content/Context;)Landroid/app/job/JobInfo;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    iget v1, p0, Lio/branch/search/a3;->a:I

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lio/branch/search/a3;->b:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lio/branch/search/a3;->a(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    const-string p1, "buildJobInfo(builder).build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
