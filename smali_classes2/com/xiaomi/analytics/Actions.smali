.class public Lcom/xiaomi/analytics/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    .locals 1

    .line 18
    new-instance v0, Lcom/xiaomi/analytics/AdAction;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaomi/analytics/AdAction;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/AdAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newCustomAction()Lcom/xiaomi/analytics/CustomAction;
    .locals 1

    .line 6
    new-instance v0, Lcom/xiaomi/analytics/CustomAction;

    invoke-direct {v0}, Lcom/xiaomi/analytics/CustomAction;-><init>()V

    return-object v0
.end method

.method public static newEventAction(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    .locals 1

    .line 10
    new-instance v0, Lcom/xiaomi/analytics/EventAction;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newEventAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaomi/analytics/EventAction;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/EventAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
