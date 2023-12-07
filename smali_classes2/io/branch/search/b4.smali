.class public Lio/branch/search/b4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/t3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/b4;->a:Ljava/lang/String;

    iput-wide p3, p0, Lio/branch/search/b4;->b:J

    iput-object p2, p0, Lio/branch/search/b4;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/b4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/q3;
    .locals 0

    sget-object p0, Lio/branch/search/q3;->f:Lio/branch/search/q3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/b4;->a:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/branch/search/b4;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lio/branch/search/b4;->c:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/b4;->d:Ljava/lang/String;

    const-string v0, "package_name"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/branch/search/b4;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/branch/search/b4;

    iget-wide v2, p0, Lio/branch/search/b4;->b:J

    iget-wide v4, p1, Lio/branch/search/b4;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/b4;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/b4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/branch/search/b4;->c:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/b4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/branch/search/b4;->d:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/b4;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method
