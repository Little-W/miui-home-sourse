.class public Lcom/miui/maml/compat/AwesomeClockCompat;
.super Ljava/lang/Object;
.source "AwesomeClockCompat.java"


# static fields
.field private static final AWESOME:Ljava/lang/String; = "awesome"

.field private static final LOG_TAG:Ljava/lang/String; = "AwesomeClockCompat"

.field private static final MINUTE_IN_MILLIS:I = 0xea60

.field private static final ROOT_TAG:Ljava/lang/String; = "clock"

.field private static final SECOND_IN_MILLIS:I = 0x3e8

.field private static final TYPE_ATTR_NAME:Ljava/lang/String; = "type"

.field private static final UPDATE_INTERVAL_TAG:Ljava/lang/String; = "update_interval"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compatClock(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    :try_start_0
    const-string v0, "update_interval"

    .line 38
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compatClock error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AwesomeClockCompat"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xea60

    :goto_0
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 42
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    return-void
.end method

.method public static isAwesomeClock(Lorg/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "clock"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "type"

    .line 26
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "awesome"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
