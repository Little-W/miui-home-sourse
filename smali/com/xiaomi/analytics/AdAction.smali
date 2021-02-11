.class public Lcom/xiaomi/analytics/AdAction;
.super Lcom/xiaomi/analytics/TrackAction;
.source "AdAction.java"


# static fields
.field protected static final AD_MONITOR:Ljava/lang/String; = "_ad_monitor_"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/analytics/TrackAction;-><init>()V

    const-string v0, "ad"

    .line 15
    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/AdAction;->setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/AdAction;->setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/analytics/TrackAction;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/AdAction;->setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    .line 21
    invoke-virtual {p0, p2}, Lcom/xiaomi/analytics/AdAction;->setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;

    return-void
.end method


# virtual methods
.method public addAdMonitor(Ljava/util/List;)Lcom/xiaomi/analytics/AdAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/analytics/AdAction;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "|"

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "_ad_monitor_"

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/AdAction;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method
