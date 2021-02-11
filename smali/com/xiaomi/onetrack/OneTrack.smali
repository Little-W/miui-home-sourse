.class public Lcom/xiaomi/onetrack/OneTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/OneTrack$Event;,
        Lcom/xiaomi/onetrack/OneTrack$Param;,
        Lcom/xiaomi/onetrack/OneTrack$NetType;,
        Lcom/xiaomi/onetrack/OneTrack$UserIdType;,
        Lcom/xiaomi/onetrack/OneTrack$Mode;,
        Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private c:Lcom/xiaomi/onetrack/Configuration;

.field private d:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 188
    iput-object p2, p0, Lcom/xiaomi/onetrack/OneTrack;->c:Lcom/xiaomi/onetrack/Configuration;

    .line 189
    new-instance v0, Lcom/xiaomi/onetrack/a/f;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/onetrack/a/f;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;
    .locals 1

    .line 193
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    return-object v0
.end method

.method public static isDisable()Z
    .locals 1

    .line 205
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->a:Z

    return v0
.end method

.method public static isUseSystemNetTrafficOnly()Z
    .locals 1

    .line 213
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    return v0
.end method

.method public static setAccessNetworkEnable(Landroid/content/Context;Z)V
    .locals 0

    .line 277
    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 278
    new-instance p0, Lcom/xiaomi/onetrack/OneTrack$1;

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/OneTrack$1;-><init>(Z)V

    invoke-static {p0}, Lcom/xiaomi/onetrack/h/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .line 197
    sput-boolean p0, Lcom/xiaomi/onetrack/h/n;->a:Z

    return-void
.end method

.method public static setDisable(Z)V
    .locals 0

    .line 201
    sput-boolean p0, Lcom/xiaomi/onetrack/OneTrack;->a:Z

    return-void
.end method

.method public static setUseSystemNetTrafficOnly()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    sput-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    return-void
.end method


# virtual methods
.method public clearCommonProperty()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/f;->b()V

    return-void
.end method

.method public login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/onetrack/OneTrack;->login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V

    return-void
.end method

.method public login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V

    return-void
.end method

.method public logout()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/f;->a()V

    return-void
.end method

.method public removeCommonProperty(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setCommonProperty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->c(Ljava/util/Map;)V

    return-void
.end method

.method public setDynamicCommonProperty(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setUserProfile(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserProfile(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackServiceQualityEvent(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    return-void
.end method

.method public userProfileIncrement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public userProfileIncrement(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/a/f;->b(Ljava/util/Map;)V

    return-void
.end method
