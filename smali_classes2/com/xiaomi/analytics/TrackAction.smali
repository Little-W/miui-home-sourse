.class public Lcom/xiaomi/analytics/TrackAction;
.super Lcom/xiaomi/analytics/Action;
.source "TrackAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/analytics/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public setAction(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string v0, "_action_"

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string v0, "_category_"

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    const-string v0, "_label_"

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/analytics/TrackAction;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setValue(J)Lcom/xiaomi/analytics/TrackAction;
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_value_"

    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/analytics/TrackAction;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
