.class public final Lio/branch/search/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/branch/search/j2;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Lio/branch/search/j2;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/m2;->a:Lio/branch/search/j2;

    iput p2, p0, Lio/branch/search/m2;->b:I

    iput-object p3, p0, Lio/branch/search/m2;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/m2;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lio/branch/search/m2;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lio/branch/search/m2;->b:I

    return v0
.end method

.method public final a(Lio/branch/search/i1;)Lio/branch/search/f2;
    .locals 2

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/m2;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/m2;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/branch/search/i1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/branch/search/m2;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/branch/search/i1;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    new-instance v0, Lio/branch/search/f2;

    iget-object v1, p0, Lio/branch/search/m2;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lio/branch/search/f2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Lio/branch/search/j2;
    .locals 1

    iget-object v0, p0, Lio/branch/search/m2;->a:Lio/branch/search/j2;

    return-object v0
.end method
