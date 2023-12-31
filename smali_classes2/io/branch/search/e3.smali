.class public Lio/branch/search/e3;
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

    iput-object p1, p0, Lio/branch/search/e3;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/e3;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/e3;->c:Ljava/lang/String;

    iput-wide p4, p0, Lio/branch/search/e3;->d:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/branch/search/e3;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/e3;

    iget-object v0, p1, Lio/branch/search/e3;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/e3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/branch/search/e3;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/e3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/branch/search/e3;->b:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/e3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lio/branch/search/e3;->d:J

    iget-wide p0, p0, Lio/branch/search/e3;->d:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
