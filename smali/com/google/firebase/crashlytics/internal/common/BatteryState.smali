.class Lcom/google/firebase/crashlytics/internal/common/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# instance fields
.field private final level:Ljava/lang/Float;

.field private final powerConnected:Z


# direct methods
.method private constructor <init>(Ljava/lang/Float;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    .line 34
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/common/BatteryState;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->isPowerConnected(Landroid/content/Intent;)Z

    move-result v1

    .line 75
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->getLevel(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    const-string v3, "An error occurred getting battery state."

    invoke-virtual {v2, v3, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    :goto_0
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;-><init>(Ljava/lang/Float;Z)V

    return-object p0
.end method

.method private static getLevel(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 3

    const/4 v0, -0x1

    const-string v1, "level"

    .line 108
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    .line 109
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq v1, v0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 113
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isPowerConnected(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, -0x1

    const-string v1, "status"

    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public getBatteryLevel()Ljava/lang/Float;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    return-object p0
.end method

.method public getBatteryVelocity()I
    .locals 4

    .line 56
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    if-nez p0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
