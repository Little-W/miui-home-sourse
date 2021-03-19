.class public Lcom/miui/maml/data/BatteryVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

.field private mLevel:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 3

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "battery_level"

    invoke-virtual {p0}, Lcom/miui/maml/data/BatteryVariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "level"

    const/4 p3, -0x1

    .line 22
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 23
    iget p2, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mLevel:I

    if-eq p2, p1, :cond_1

    .line 24
    iget-object p2, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lcom/miui/maml/data/IndexedVariable;

    const/16 p3, 0x64

    if-lt p1, p3, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 25
    iput p1, p0, Lcom/miui/maml/data/BatteryVariableUpdater;->mLevel:I

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/data/BatteryVariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_1
    return-void
.end method
