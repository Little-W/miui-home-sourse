.class public Lio/branch/search/d4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/search/t3;


# static fields
.field public static h:Ljava/lang/String; = "`request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `entity_id` TEXT, `package_id` TEXT, `shortcut_id` TEXT, `user_id` INTEGER, `timestamp` INTEGER, PRIMARY KEY(`request_id`, `result_id`)"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Long;

.field public final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/d4;->a:Ljava/lang/String;

    iput p2, p0, Lio/branch/search/d4;->b:I

    iput-object p3, p0, Lio/branch/search/d4;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/d4;->d:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/d4;->e:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/d4;->f:Ljava/lang/Long;

    iput-wide p7, p0, Lio/branch/search/d4;->g:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/q3;
    .locals 0

    sget-object p0, Lio/branch/search/q3;->k:Lio/branch/search/q3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/d4;->a:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/d4;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "result_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lio/branch/search/d4;->c:Ljava/lang/String;

    const-string v1, "entity_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/d4;->d:Ljava/lang/String;

    const-string v1, "package_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/d4;->e:Ljava/lang/String;

    const-string v1, "shortcut_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/d4;->f:Ljava/lang/Long;

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/d4;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
