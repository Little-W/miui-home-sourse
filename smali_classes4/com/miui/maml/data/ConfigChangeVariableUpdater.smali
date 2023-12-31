.class public Lcom/miui/maml/data/ConfigChangeVariableUpdater;
.super Lcom/miui/maml/data/NotifierVariableUpdater;
.source "ConfigChangeVariableUpdater.java"


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 1

    .line 13
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_CONFIG_CHANGE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/NotifierVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .line 19
    instance-of p1, p3, Landroid/content/res/Configuration;

    if-eqz p1, :cond_0

    .line 20
    check-cast p3, Landroid/content/res/Configuration;

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/data/ConfigChangeVariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method
