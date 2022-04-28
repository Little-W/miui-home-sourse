.class public Lio/branch/search/r2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/r2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    iput-wide p4, p0, Lio/branch/search/r2;->d:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lio/branch/search/r2;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/r2;

    iget-object v0, p1, Lio/branch/search/r2;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/r2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/branch/search/r2;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/branch/search/r2;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lio/branch/search/r2;->d:J

    iget-wide v2, p0, Lio/branch/search/r2;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
