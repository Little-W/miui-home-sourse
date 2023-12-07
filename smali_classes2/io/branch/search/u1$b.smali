.class public Lio/branch/search/u1$b;
.super Lio/branch/search/u1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final b:Lorg/json/JSONObject;

.field public final c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "user_id"

    const-string v1, "debug_mode"

    const-string v2, "is_connected"

    const-string v3, "connected_network_types"

    const-string v4, "is_network_metered"

    const-string v5, "gaid"

    const-string v6, "user_latitude"

    const-string v7, "user_longitude"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/branch/search/u1;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/branch/search/u1$b;->a:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/search/u1$b;->b:Lorg/json/JSONObject;

    sget-object v0, Lio/branch/search/s0;->a:Lio/branch/search/q0;

    sget-object v1, Lio/branch/search/q0$a;->a:Lio/branch/search/q0$a;

    invoke-interface {v0, v1}, Lio/branch/search/q0;->a(Lio/branch/search/q0$a;)Z

    move-result v0

    iput-boolean v0, p0, Lio/branch/search/u1$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "c:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "gaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/branch/search/u1$b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "user_latitude"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/branch/search/u1$b;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "user_longitude"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/branch/search/u1$b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "debug_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lio/branch/search/u1$b;->c:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_5
    const-string v0, "user_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p0

    const-string p1, "user"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/l;->g:Lio/branch/search/n1;

    const-string v4, "is_connected"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lio/branch/search/n1;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, v3

    :goto_1
    return-object v2

    :cond_8
    const-string v4, "is_network_metered"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lio/branch/search/n1;->f()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move-object v2, v3

    :goto_2
    return-object v2

    :cond_a
    const-string v2, "connected_network_types"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lio/branch/search/n1;->a()Ljava/util/Set;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_d

    if-eq v0, v1, :cond_c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    goto :goto_3

    :cond_b
    const-string v0, "ethernet,"

    goto :goto_4

    :cond_c
    const-string v0, "bluetooth,"

    goto :goto_4

    :cond_d
    const-string v0, "wifi,"

    goto :goto_4

    :cond_e
    const-string v0, "cellular,"

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_10

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    :cond_11
    invoke-virtual {p0}, Lio/branch/search/u1$b;->a()V

    iget-object v0, p0, Lio/branch/search/u1$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    :try_start_0
    iget-object p0, p0, Lio/branch/search/u1$b;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown binding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 4

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    iget-boolean v1, p0, Lio/branch/search/u1$b;->a:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/u1$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lio/branch/search/e;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/u1$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lio/branch/search/BranchConfiguration;->a(Lorg/json/JSONObject;Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/u1$b;->a:Z

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/u1$b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/u1$b;->f:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lio/branch/search/u1$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/branch/search/u1$b;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/e;->g()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/branch/search/u1$b;->d:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lio/branch/search/u1$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/branch/search/u1$b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/e;->i()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/branch/search/u1$b;->e:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lio/branch/search/u1$b;->e:Ljava/lang/String;

    return-object p0
.end method
