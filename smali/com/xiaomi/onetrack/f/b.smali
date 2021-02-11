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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/onetrack/f/b$a;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->a(Lcom/xiaomi/onetrack/f/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    .line 113
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->b(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->c(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->d(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->e(Lcom/xiaomi/onetrack/f/b$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    .line 117
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->f(Lcom/xiaomi/onetrack/f/b$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    .line 118
    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->g(Lcom/xiaomi/onetrack/f/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/onetrack/f/b$a;Lcom/xiaomi/onetrack/f/c;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/f/b;-><init>(Lcom/xiaomi/onetrack/f/b$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    .line 202
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 207
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->A()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    .line 212
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/f;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 213
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->isGAIDEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 217
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/h/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 220
    :cond_2
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 221
    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 223
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/h/f;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/xiaomi/onetrack/h/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/xiaomi/onetrack/h/f;->h()Ljava/lang/String;

    move-result-object p0

    .line 229
    :goto_2
    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a;->a()Lcom/xiaomi/onetrack/h/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/h/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->j:Ljava/lang/String;

    const-string v2, "Android"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->k:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 239
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->w:Ljava/lang/String;

    const-string v2, "1.0.7"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
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

    .line 246
    :goto_3
    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-static {v0, p1, p2}, Lcom/xiaomi/onetrack/f/b;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)V

    .line 248
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/f/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 249
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->z:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/h/o;->u()I

    move-result p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
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

    .line 251
    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->A:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/xiaomi/onetrack/h/v;->u()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {}, Lcom/xiaomi/onetrack/h/v;->w()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
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

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 268
    :cond_0
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-wide v0
.end method

.method public h()Z
    .locals 3

    .line 99
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

    .line 100
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Event"

    const-string v2, "check event isValid error, "

    .line 106
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
