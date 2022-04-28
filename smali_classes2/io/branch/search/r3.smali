.class public Lio/branch/search/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/g3;


# static fields
.field public static g:Ljava/lang/String; = "`request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `entity_id` TEXT, `area` FLOAT NOT NULL, `start_time` INTEGER NOT NULL, `duration` INTEGER NOT NULL,PRIMARY KEY(`request_id`, `result_id`, `start_time`, `duration`)"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:F

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;FJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/r3;->a:Ljava/lang/String;

    iput p2, p0, Lio/branch/search/r3;->b:I

    iput-object p3, p0, Lio/branch/search/r3;->c:Ljava/lang/String;

    iput p4, p0, Lio/branch/search/r3;->d:F

    iput-wide p5, p0, Lio/branch/search/r3;->e:J

    iput-wide p7, p0, Lio/branch/search/r3;->f:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/d3;
    .locals 1

    sget-object v0, Lio/branch/search/d3;->j:Lio/branch/search/d3;

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/r3;->a:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/r3;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "result_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lio/branch/search/r3;->c:Ljava/lang/String;

    const-string v1, "entity_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/r3;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "area"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-wide v0, p0, Lio/branch/search/r3;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "start_time"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/r3;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

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

    const-class v3, Lio/branch/search/r3;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/branch/search/r3;

    iget v2, p0, Lio/branch/search/r3;->b:I

    iget v3, p1, Lio/branch/search/r3;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lio/branch/search/r3;->d:F

    iget v3, p0, Lio/branch/search/r3;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/branch/search/r3;->e:J

    iget-wide v4, p1, Lio/branch/search/r3;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/branch/search/r3;->f:J

    iget-wide v4, p1, Lio/branch/search/r3;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/r3;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/branch/search/r3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/branch/search/r3;->c:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/r3;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
