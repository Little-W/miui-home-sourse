.class public Lio/branch/search/b1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final synthetic f:Lio/branch/search/b1;


# direct methods
.method public constructor <init>(Lio/branch/search/b1;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lio/branch/search/b1$c;->f:Lio/branch/search/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/b1$c;->a:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/b1$c;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/b1$c;->c:J

    iput-object p2, p0, Lio/branch/search/b1$c;->d:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/branch/search/b1$c;->e:I

    return-void
.end method

.method public static synthetic a(Lio/branch/search/b1$c;)Z
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/b1$c;->b:Z

    return p0
.end method

.method public static synthetic b(Lio/branch/search/b1$c;)I
    .locals 0

    iget p0, p0, Lio/branch/search/b1$c;->e:I

    return p0
.end method

.method public static synthetic c(Lio/branch/search/b1$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/b1$c;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(J)J
    .locals 4

    iget-wide v0, p0, Lio/branch/search/b1$c;->c:J

    iget-boolean v2, p0, Lio/branch/search/b1$c;->b:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lio/branch/search/b1$c;->a:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public a(Z)V
    .locals 6

    iget-boolean v0, p0, Lio/branch/search/b1$c;->b:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/branch/search/b1$c;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/branch/search/b1$c;->a:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/branch/search/b1$c;->c:J

    :cond_0
    iget-boolean v0, p0, Lio/branch/search/b1$c;->b:Z

    if-eq v0, p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/b1$c;->a:J

    :cond_1
    iput-boolean p1, p0, Lio/branch/search/b1$c;->b:Z

    return-void
.end method

.method public b(J)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/b1$c;->c:J

    iput-wide p1, p0, Lio/branch/search/b1$c;->a:J

    return-void
.end method
