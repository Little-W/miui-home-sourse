.class public Lio/branch/search/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/g3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/v2;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/v2;->b:Ljava/lang/Long;

    iput-object p3, p0, Lio/branch/search/v2;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/v2;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lio/branch/search/v2;->e:Z

    iput-wide p6, p0, Lio/branch/search/v2;->f:J

    iput-wide p8, p0, Lio/branch/search/v2;->g:J

    iput-wide p10, p0, Lio/branch/search/v2;->h:J

    iput-wide p12, p0, Lio/branch/search/v2;->i:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/d3;
    .locals 1

    sget-object v0, Lio/branch/search/d3;->c:Lio/branch/search/d3;

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 4

    iget-object v0, p0, Lio/branch/search/v2;->a:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/v2;->b:Ljava/lang/Long;

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lio/branch/search/v2;->c:Ljava/lang/String;

    const-string v1, "original_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/v2;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "normalized_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/v2;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "case_sensitive_normalized_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/v2;->d:Ljava/lang/String;

    const-string v3, "relabeled_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/v2;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normalized_relabeled_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/v2;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "case_sensitive_normalized_relabeled_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/v2;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_installed"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-wide v0, p0, Lio/branch/search/v2;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "first_installed_date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/v2;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "installed_date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/v2;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uninstalled_date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/v2;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uninstall_count"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/branch/search/v2;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/v2;

    iget-object v0, p1, Lio/branch/search/v2;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/v2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lio/branch/search/v2;->b:Ljava/lang/Long;

    iget-object v0, p0, Lio/branch/search/v2;->b:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
