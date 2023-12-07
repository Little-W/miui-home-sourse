.class public Lcom/xiaomi/onetrack/f/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/f/b$b;,
        Lcom/xiaomi/onetrack/f/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String; = "Event"


# instance fields
.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lorg/json/JSONObject;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/onetrack/f/b$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->a(Lcom/xiaomi/onetrack/f/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->b(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->c(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->d(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->e(Lcom/xiaomi/onetrack/f/b$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->f(Lcom/xiaomi/onetrack/f/b$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->g(Lcom/xiaomi/onetrack/f/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/f/b$a;Lcom/xiaomi/onetrack/f/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/f/b;-><init>(Lcom/xiaomi/onetrack/f/b$a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/api/i;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p4, :cond_4

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->z:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->f()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->j:Ljava/lang/String;

    const-string p5, "Android"

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->k:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->b()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object p5

    invoke-virtual {p5}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->w:Ljava/lang/String;

    const-string p5, "2.1.1"

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/i;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string p0, "default"

    :goto_2
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->q:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrack$Mode;->getType()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->A:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->B:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->B()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->c:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->C:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->D:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/util/v;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->E:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->G:Ljava/lang/String;

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->I:Ljava/lang/String;

    const-string p1, "JS"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Ljava/lang/String;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Ljava/lang/String;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p5, :cond_3

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, p1, p3}, Lcom/xiaomi/onetrack/f/b;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/f/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->z:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->f()I

    move-result p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->j:Ljava/lang/String;

    const-string p2, "Android"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->k:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Lcom/xiaomi/onetrack/b/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/xiaomi/onetrack/b/a;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->u:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->w:Ljava/lang/String;

    const-string p2, "2.1.1"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p6, :cond_4

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getChannel()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, "default"

    :goto_3
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->q:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    goto :goto_4

    :cond_6
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    :goto_4
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrack$Mode;->getType()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->A:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->B:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->B()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->c:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->C:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_7
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->D:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/xiaomi/onetrack/util/v;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->E:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->G:Ljava/lang/String;

    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->y:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    return p0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    return-object p0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Event"

    const-string v1, "check event isValid error, "

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
