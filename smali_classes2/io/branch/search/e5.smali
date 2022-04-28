.class public final enum Lio/branch/search/e5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/e5;",
        ">;"
    }
.end annotation


# static fields
.field public static A:Ljava/lang/Long;

.field public static final synthetic B:[Lio/branch/search/e5;

.field public static final enum f:Lio/branch/search/e5;

.field public static final enum g:Lio/branch/search/e5;

.field public static final enum h:Lio/branch/search/e5;

.field public static final enum i:Lio/branch/search/e5;

.field public static final enum j:Lio/branch/search/e5;

.field public static final enum k:Lio/branch/search/e5;

.field public static final enum l:Lio/branch/search/e5;

.field public static final enum m:Lio/branch/search/e5;

.field public static final enum n:Lio/branch/search/e5;

.field public static final enum o:Lio/branch/search/e5;

.field public static final enum p:Lio/branch/search/e5;

.field public static final enum q:Lio/branch/search/e5;

.field public static final enum r:Lio/branch/search/e5;

.field public static final enum s:Lio/branch/search/e5;

.field public static final enum t:Lio/branch/search/e5;

.field public static final enum u:Lio/branch/search/e5;

.field public static final enum v:Lio/branch/search/e5;

.field public static final enum w:Lio/branch/search/e5;

.field public static final enum x:Lio/branch/search/e5;

.field public static final enum y:Lio/branch/search/e5;

.field public static final enum z:Lio/branch/search/e5;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    new-instance v8, Lio/branch/search/e5;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "SEARCH"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v8, Lio/branch/search/e5;->f:Lio/branch/search/e5;

    new-instance v10, Lio/branch/search/e5;

    const-string v1, "APP_STORE_SEARCH"

    const/4 v2, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v10, Lio/branch/search/e5;->g:Lio/branch/search/e5;

    new-instance v11, Lio/branch/search/e5;

    const-string v1, "ZERO_STATE"

    const/4 v2, 0x2

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v11, Lio/branch/search/e5;->h:Lio/branch/search/e5;

    new-instance v12, Lio/branch/search/e5;

    const-string v1, "AUTOSUGGEST"

    const/4 v2, 0x3

    const/16 v4, 0xbb8

    const/4 v5, 0x3

    const/16 v6, 0x64

    move-object v0, v12

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v12, Lio/branch/search/e5;->i:Lio/branch/search/e5;

    new-instance v13, Lio/branch/search/e5;

    const-string v1, "QUERYHINT"

    const/4 v2, 0x4

    move-object v0, v13

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v13, Lio/branch/search/e5;->j:Lio/branch/search/e5;

    new-instance v22, Lio/branch/search/e5;

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v15, "BRANCH_CLICK_TRACKING"

    const/16 v16, 0x5

    const/16 v18, 0x2710

    const/16 v19, 0x3

    const/16 v20, 0x64

    const/16 v21, 0x0

    move-object/from16 v14, v22

    move-object/from16 v17, v23

    invoke-direct/range {v14 .. v21}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v22, Lio/branch/search/e5;->k:Lio/branch/search/e5;

    new-instance v14, Lio/branch/search/e5;

    const-string v1, "ANALYTICS"

    const/4 v2, 0x6

    const/16 v4, 0x2710

    move-object v0, v14

    move-object/from16 v3, v23

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v14, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    new-instance v15, Lio/branch/search/e5;

    const-string v1, "LOCAL_CONTENT"

    const/4 v2, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, v15

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v15, Lio/branch/search/e5;->m:Lio/branch/search/e5;

    new-instance v16, Lio/branch/search/e5;

    const-string v1, "IS_SERVICE_ENABLED"

    const/16 v2, 0x8

    const/16 v4, 0x1388

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v16, Lio/branch/search/e5;->n:Lio/branch/search/e5;

    new-instance v17, Lio/branch/search/e5;

    const-string v1, "PING_SERVICE"

    const/16 v2, 0x9

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v17, Lio/branch/search/e5;->o:Lio/branch/search/e5;

    new-instance v18, Lio/branch/search/e5;

    const-string v1, "REMOTE_SEARCH_IMAGE"

    const/16 v2, 0xa

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v18, Lio/branch/search/e5;->p:Lio/branch/search/e5;

    new-instance v19, Lio/branch/search/e5;

    const-string v1, "LOCAL_SEARCH_AD_IMAGE"

    const/16 v2, 0xb

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v19, Lio/branch/search/e5;->q:Lio/branch/search/e5;

    new-instance v20, Lio/branch/search/e5;

    const-string v1, "APP_STORE_SEARCH_IMAGE"

    const/16 v2, 0xc

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v20, Lio/branch/search/e5;->r:Lio/branch/search/e5;

    new-instance v21, Lio/branch/search/e5;

    const-string v1, "LOCAL_SEARCH_LINK_IMAGE"

    const/16 v2, 0xd

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v21, Lio/branch/search/e5;->s:Lio/branch/search/e5;

    new-instance v24, Lio/branch/search/e5;

    const-string v1, "LOCAL_ZERO_STATE_AD_IMAGE"

    const/16 v2, 0xe

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v24, Lio/branch/search/e5;->t:Lio/branch/search/e5;

    new-instance v25, Lio/branch/search/e5;

    const-string v1, "LOCAL_ZERO_STATE_LINK_IMAGE"

    const/16 v2, 0xf

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v25, Lio/branch/search/e5;->u:Lio/branch/search/e5;

    new-instance v26, Lio/branch/search/e5;

    const-string v1, "LOCAL_SEARCH_AD_IMAGE_PRELOAD"

    const/16 v2, 0x10

    move-object/from16 v0, v26

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v26, Lio/branch/search/e5;->v:Lio/branch/search/e5;

    new-instance v27, Lio/branch/search/e5;

    const-string v1, "LOCAL_SEARCH_LINK_IMAGE_PRELOAD"

    const/16 v2, 0x11

    move-object/from16 v0, v27

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v27, Lio/branch/search/e5;->w:Lio/branch/search/e5;

    new-instance v28, Lio/branch/search/e5;

    const-string v1, "LOCAL_ZERO_STATE_AD_IMAGE_PRELOAD"

    const/16 v2, 0x12

    move-object/from16 v0, v28

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v28, Lio/branch/search/e5;->x:Lio/branch/search/e5;

    new-instance v29, Lio/branch/search/e5;

    const-string v1, "LOCAL_ZERO_STATE_LINK_IMAGE_PRELOAD"

    const/16 v2, 0x13

    move-object/from16 v0, v29

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v29, Lio/branch/search/e5;->y:Lio/branch/search/e5;

    new-instance v23, Lio/branch/search/e5;

    const-string v1, "NOT_A_CHANNEL"

    const/16 v2, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object v3, v9

    invoke-direct/range {v0 .. v7}, Lio/branch/search/e5;-><init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V

    sput-object v23, Lio/branch/search/e5;->z:Lio/branch/search/e5;

    const/16 v0, 0x15

    new-array v0, v0, [Lio/branch/search/e5;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v10, v0, v1

    const/4 v1, 0x2

    aput-object v11, v0, v1

    const/4 v1, 0x3

    aput-object v12, v0, v1

    const/4 v1, 0x4

    aput-object v13, v0, v1

    const/4 v1, 0x5

    aput-object v22, v0, v1

    const/4 v1, 0x6

    aput-object v14, v0, v1

    const/4 v1, 0x7

    aput-object v15, v0, v1

    const/16 v1, 0x8

    aput-object v16, v0, v1

    const/16 v1, 0x9

    aput-object v17, v0, v1

    const/16 v1, 0xa

    aput-object v18, v0, v1

    const/16 v1, 0xb

    aput-object v19, v0, v1

    const/16 v1, 0xc

    aput-object v20, v0, v1

    const/16 v1, 0xd

    aput-object v21, v0, v1

    const/16 v1, 0xe

    aput-object v24, v0, v1

    const/16 v1, 0xf

    aput-object v25, v0, v1

    const/16 v1, 0x10

    aput-object v26, v0, v1

    const/16 v1, 0x11

    aput-object v27, v0, v1

    const/16 v1, 0x12

    aput-object v28, v0, v1

    const/16 v1, 0x13

    aput-object v29, v0, v1

    const/16 v1, 0x14

    aput-object v23, v0, v1

    sput-object v0, Lio/branch/search/e5;->B:[Lio/branch/search/e5;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/32 v3, 0xdbba00

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/branch/search/e5;->A:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "IIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    iput-boolean p7, p0, Lio/branch/search/e5;->a:Z

    iput-boolean p7, p0, Lio/branch/search/e5;->b:Z

    iput p4, p0, Lio/branch/search/e5;->c:I

    iput p5, p0, Lio/branch/search/e5;->d:I

    iput p6, p0, Lio/branch/search/e5;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/branch/search/e5;
    .locals 5

    invoke-static {}, Lio/branch/search/e5;->values()[Lio/branch/search/e5;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/branch/search/e5;->z:Lio/branch/search/e5;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/e5;
    .locals 1

    const-class v0, Lio/branch/search/e5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/e5;

    return-object p0
.end method

.method public static values()[Lio/branch/search/e5;
    .locals 1

    sget-object v0, Lio/branch/search/e5;->B:[Lio/branch/search/e5;

    invoke-virtual {v0}, [Lio/branch/search/e5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/e5;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/branch/search/l;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/branch/search/e5;->z:Lio/branch/search/e5;

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/e5;->b()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lio/branch/search/m5;

    invoke-direct {v1}, Lio/branch/search/m5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lio/branch/search/e5;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lio/branch/search/e5;->b:Z

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lio/branch/search/i5;

    invoke-direct {v1, p1, p0}, Lio/branch/search/i5;-><init>(Lio/branch/search/l;Lio/branch/search/e5;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/branch/search/h5;

    invoke-direct {v1, p1, p0}, Lio/branch/search/h5;-><init>(Lio/branch/search/l;Lio/branch/search/e5;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lio/branch/search/b5;

    invoke-virtual {p0}, Lio/branch/search/e5;->b()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lio/branch/search/b5;-><init>(ZLio/branch/search/b;Lio/branch/search/e5;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/branch/search/l5;

    iget-object v2, p1, Lio/branch/search/l;->e:Lio/branch/search/b3;

    invoke-direct {v1, p1, v2, p0}, Lio/branch/search/l5;-><init>(Lio/branch/search/l;Lio/branch/search/b3;Lio/branch/search/e5;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/branch/search/g5;

    iget-object v2, p1, Lio/branch/search/l;->e:Lio/branch/search/b3;

    new-instance v3, Lio/branch/search/r4;

    sget-object v4, Lio/branch/search/e5;->A:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/branch/search/r4;-><init>(J)V

    invoke-direct {v1, p1, v2, p0, v3}, Lio/branch/search/g5;-><init>(Lio/branch/search/l;Lio/branch/search/b3;Lio/branch/search/e5;Lio/branch/search/r4;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lio/branch/search/e5;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lio/branch/search/n5;

    invoke-direct {p1}, Lio/branch/search/n5;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public a()Z
    .locals 1

    sget-object v0, Lio/branch/search/e5;->f:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->g:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->i:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->j:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->m:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->n:Lio/branch/search/e5;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(Lio/branch/search/l;)Lokhttp3/OkHttpClient;
    .locals 3

    invoke-static {}, Lio/branch/search/p4;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/branch/search/e5;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0, p1}, Lio/branch/search/e5;->a(Lio/branch/search/l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_0
    iget p1, p0, Lio/branch/search/e5;->c:I

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_IMAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_IMAGE_PRELOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lio/branch/search/e5;->f:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->g:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->i:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->j:Lio/branch/search/e5;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/branch/search/e5;->k:Lio/branch/search/e5;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
