.class public Lio/branch/search/BranchConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchConfiguration$d;,
        Lio/branch/search/BranchConfiguration$e;,
        Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lio/branch/search/w3;

.field public C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/branch/search/BranchConfiguration$BranchTrackingStatus;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/util/concurrent/atomic/AtomicLong;

.field public E:Z

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/o;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;",
            ">;"
        }
    .end annotation
.end field

.field public a:J

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/util/Locale;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lio/branch/search/IBranchShortcutHandler;

.field public r:Lio/branch/search/IBranchDeepViewHandler;

.field public s:Lio/branch/search/IBranchAppDataOverrideHandler;

.field public t:Lio/branch/search/IBranchIntentHandler;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/branch/search/BranchConfiguration;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->b:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/branch/search/BranchConfiguration;->e:Z

    const/high16 v1, 0x10000000

    iput v1, p0, Lio/branch/search/BranchConfiguration;->o:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/branch/search/BranchConfiguration;->p:Ljava/util/Map;

    sget-object v1, Lio/branch/search/IBranchShortcutHandler;->a:Lio/branch/search/IBranchShortcutHandler;

    iput-object v1, p0, Lio/branch/search/BranchConfiguration;->q:Lio/branch/search/IBranchShortcutHandler;

    sget-object v1, Lio/branch/search/IBranchDeepViewHandler;->a:Lio/branch/search/IBranchDeepViewHandler;

    iput-object v1, p0, Lio/branch/search/BranchConfiguration;->r:Lio/branch/search/IBranchDeepViewHandler;

    new-instance v1, Lio/branch/search/BranchConfiguration$a;

    invoke-direct {v1, p0}, Lio/branch/search/BranchConfiguration$a;-><init>(Lio/branch/search/BranchConfiguration;)V

    iput-object v1, p0, Lio/branch/search/BranchConfiguration;->s:Lio/branch/search/IBranchAppDataOverrideHandler;

    new-instance v1, Lio/branch/search/DefaultBranchIntentHandler;

    invoke-direct {v1}, Lio/branch/search/DefaultBranchIntentHandler;-><init>()V

    iput-object v1, p0, Lio/branch/search/BranchConfiguration;->t:Lio/branch/search/IBranchIntentHandler;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->u:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->v:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->w:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->x:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->y:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->z:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->A:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->B:Lio/branch/search/w3;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->D:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->F:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->G:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->H:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/BranchConfiguration;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->G:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/BranchConfiguration;)V
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->s()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/branch/search/BranchConfiguration$d;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchConfiguration;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/branch/search/BranchConfiguration$b;

    invoke-direct {v0, p0, p1}, Lio/branch/search/BranchConfiguration$b;-><init>(Lio/branch/search/BranchConfiguration;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->y:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "https://vulcan2.branch.io/v1/ingest"

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;Lio/branch/search/l;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/branch/search/BranchConfiguration$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/branch/search/BranchConfiguration$c;-><init>(Lio/branch/search/BranchConfiguration;Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$d;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Landroid/content/Context;Lio/branch/search/l;)V
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->q()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lio/branch/search/Util;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/branch/search/BranchConfiguration;->setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->q()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid Branch Key. Clients must either have a valid key in the manifest or initialize BranchSearch passing in a BranchConfiguration object that has a preconfigured and valid branchKey"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/branch/search/Util;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/branch/search/BranchConfiguration;->c(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    invoke-static {p1}, Lio/branch/search/Util;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchConfiguration;->h:Ljava/lang/String;

    invoke-static {p1}, Lio/branch/search/Util;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchConfiguration;->i:Ljava/lang/String;

    const-string p2, "SyncLockGAID"

    invoke-virtual {p0, p2}, Lio/branch/search/BranchConfiguration;->a(Ljava/lang/String;)Lio/branch/search/BranchConfiguration$d;

    move-result-object p2

    invoke-virtual {p0, p1, p0, p2}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/branch/search/BranchConfiguration;->a:J

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->s()V

    return-void
.end method

.method public a(Lio/branch/search/o;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->F:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V
    .locals 6

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/branch/search/BranchConfiguration;->a:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;)V

    :cond_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p2, Lio/branch/search/BranchConfiguration$e;->b:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->c:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->e:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->i:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->d:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->h:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->f:Ljava/util/Locale;

    if-eqz p2, :cond_4

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->p:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->f:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    sget-object p2, Lio/branch/search/BranchConfiguration$e;->m:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->r()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->n:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->j:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->g:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->j:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->k:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->h:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->l:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->i:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->l:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->m:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->j:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->m:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->n:Ljava/util/Map;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->k:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->n:Ljava/util/Map;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    sget-object p2, Lio/branch/search/BranchConfiguration$e;->q:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->r:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->D:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->l:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object p2, p0, Lio/branch/search/BranchConfiguration;->p:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    sget-object p2, Lio/branch/search/BranchConfiguration$e;->o:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_b

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_b
    iget-object p3, p0, Lio/branch/search/BranchConfiguration;->p:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/BranchConfiguration;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_d
    sget-object p0, Lio/branch/search/BranchConfiguration$e;->o:Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration$e;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "BranchConfiguration.addConfigurationInfo"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/branch/search/BranchConfiguration;->e:Z

    return-void
.end method

.method public b()Lio/branch/search/IBranchAppDataOverrideHandler;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->s:Lio/branch/search/IBranchAppDataOverrideHandler;

    return-object p0
.end method

.method public b(Lio/branch/search/o;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->F:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchConfiguration;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->v:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "https://vulcan1.branch.io/v1/appstore"

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/branch/search/BranchConfiguration;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->x:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "https://vulcan.branch.io/v3/autosuggest"

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->H:Ljava/util/List;

    return-object p0
.end method

.method public g()Lio/branch/search/IBranchDeepViewHandler;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->r:Lio/branch/search/IBranchDeepViewHandler;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->d:Ljava/lang/String;

    return-object p0
.end method

.method public j()Lio/branch/search/IBranchIntentHandler;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->t:Lio/branch/search/IBranchIntentHandler;

    return-object p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lio/branch/search/BranchConfiguration;->o:I

    return p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->z:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "https://vulcan3.branch.io/v1/local_content"

    return-object p0
.end method

.method public m()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->A:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "https://vulcan5.branch.io/v1/ping"

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->u:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "https://vulcan.branch.io/v1/search/"

    return-object p0
.end method

.method public p()Lio/branch/search/IBranchShortcutHandler;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->q:Lio/branch/search/IBranchShortcutHandler;

    return-object p0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lio/branch/search/BranchConfiguration;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/search/BranchConfiguration;->c:Ljava/lang/String;

    const-string v1, "key_live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->c:Ljava/lang/String;

    const-string v0, "key_test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/BranchConfiguration;->e:Z

    return p0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/BranchConfiguration;->G:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/BranchConfiguration;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/o;

    invoke-interface {v1, p0}, Lio/branch/search/o;->a(Lio/branch/search/BranchConfiguration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchConfiguration;->c:Ljava/lang/String;

    return-object p0
.end method

.method public t()Z
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/BranchConfiguration;->E:Z

    return p0
.end method

.method public trackingStatus(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)Lio/branch/search/BranchConfiguration;
    .locals 3

    iget-object v0, p0, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lio/branch/search/w3;

    iget p1, p1, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->sqlValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/branch/search/w3;-><init>(IJ)V

    iput-object v0, p0, Lio/branch/search/BranchConfiguration;->B:Lio/branch/search/w3;

    return-object p0
.end method

.method public u()Z
    .locals 1

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
