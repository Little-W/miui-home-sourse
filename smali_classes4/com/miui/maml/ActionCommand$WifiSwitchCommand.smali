.class Lcom/miui/maml/ActionCommand$WifiSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiSwitchCommand"
.end annotation


# instance fields
.field private final mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 560
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    const-string v1, "wifi_state"

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance p1, Lcom/miui/maml/ActionCommand$WifiStateTracker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/maml/ActionCommand$WifiStateTracker;-><init>(Lcom/miui/maml/ActionCommand$1;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    .line 561
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->update()V

    .line 562
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .line 573
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    invoke-virtual {v1, v0}, Lcom/miui/maml/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 578
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    invoke-virtual {v2, v0}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 580
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 592
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    invoke-virtual {v1, v0, v2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 595
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->update()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 568
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_1

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lcom/miui/maml/ActionCommand$StateTracker;

    check-cast v0, Lcom/miui/maml/ActionCommand$WifiStateTracker;

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_1

    .line 602
    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    :goto_1
    return-void
.end method
