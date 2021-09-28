.class Lcom/miui/maml/ActionCommand$DataSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# instance fields
.field private mApnEnable:Z

.field private mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    const-string v0, "data_state"

    .line 457
    sget-object v1, Lcom/miui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    .line 459
    invoke-static {}, Lcom/miui/maml/util/MobileDataUtils;->getInstance()Lcom/miui/maml/util/MobileDataUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 470
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 471
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v0, :cond_0

    .line 472
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 476
    :goto_0
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_1

    .line 477
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/util/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method protected update()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mMobileDataUtils:Lcom/miui/maml/util/MobileDataUtils;

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 465
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$DataSwitchCommand;->updateState(I)V

    return-void
.end method
