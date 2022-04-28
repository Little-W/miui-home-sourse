.class public Lio/branch/search/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/g3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/w3;->a:Ljava/lang/String;

    iput-wide p2, p0, Lio/branch/search/w3;->b:J

    iput-wide p4, p0, Lio/branch/search/w3;->c:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/d3;
    .locals 1

    sget-object v0, Lio/branch/search/d3;->h:Lio/branch/search/d3;

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/w3;->a:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/branch/search/w3;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "screen_uptime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/w3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_usage_timestamp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

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

    const-class v3, Lio/branch/search/w3;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/branch/search/w3;

    iget-wide v2, p0, Lio/branch/search/w3;->b:J

    iget-wide v4, p1, Lio/branch/search/w3;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/w3;->a:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/w3;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method
